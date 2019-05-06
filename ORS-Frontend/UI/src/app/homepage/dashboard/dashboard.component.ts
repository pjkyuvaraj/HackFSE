import { OnInit } from '@angular/core';
import { Component, ElementRef, ViewChild, AfterViewInit } from "@angular/core";
import * as d3 from 'd3'
import * as d3Axis from 'd3-axis';
import * as d3time from 'd3-time'
import { Service } from '../../Shared/service';
import { Event } from '../addevent/event.model'

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {

  EventList: Event[];
  margin = { top: 30, right: 20, bottom: 80, left: 60 };
  constructor(private Service: Service) { }

  getEventList() {

    this.Service.getData("http://localhost/ORS_api/api/EventSummary/GetEventDetailsSummaryList").subscribe((data: Event[]) => {
      console.log(data);
      this.EventList = data;
    });
  }

  ngOnInit() {

    let width = 800 - this.margin.left - this.margin.right;
    let height = 500 - this.margin.top - this.margin.bottom;
    let parseDate = d3.timeParse('%Y-%m');


    let svg = d3.select("#chartdiv").append("svg")
      .attr("width", width + this.margin.left + this.margin.right)
      .attr("height", height + this.margin.top + this.margin.bottom)
      .append("g")
      .attr("transform",
        "translate(" + this.margin.left + "," + this.margin.top + ")");
    let x = d3.scaleBand().rangeRound([0, width]).paddingInner(.5),
      y = d3.scaleLinear().rangeRound([height, 0]);

    let xAxis = d3.axisBottom(x).ticks(10);//.tickFormat(d3.timeFormat("%Y-%m"));
    let yAxis = d3.axisLeft(y).ticks(10);

    let data: any[] = [
      { date: '2019 -2020', value: 165 },
      { date: '2018 -2019', value: 269 },
      { date: '2017 -2018', value: 344 },
      { date: '2016 -2017', value: 376 },
      { date: '2015 -2016', value: 410 },
      { date: '2014 -2015', value: 421 },
      { date: '2013 -2014', value: 405 },
      { date: '2012 -2013', value: 376 },
      { date: '2011 -2012', value: 359 },
      { date: '2010 -2011', value: 392 },
      { date: '2009 -2010', value: 433 },
      { date: '2008 -2009', value: 455 },
      { date: '2007 -2008', value: 478 },

    ];
    data.forEach(function (d) {
      d.date = d.date;
      d.value = +d.value;


      x.domain(data.map(function (d) { return d.date; }));
      y.domain([0, d3.max(data, function (d) { return d.value; })]);

      svg.append("g")
        .attr("class", "x axis")
        .attr("transform", "translate(0," + height + ")")
        .call(xAxis)
        .selectAll("text")
        .style("fill", "#6c757d")
        .style("text-anchor", "end")
        .attr("dx", "-.08em")
        .attr("dy", "-.55em")
        .attr("transform", "rotate(-90)");
        

      svg.append("g")
        .attr("class", "y axis")
        .call(yAxis)
        .append("text")
        .attr("transform", "rotate(-90)")
        .attr("y", 6)
        .attr("dy", ".71em")
        .style("fill", "#6c757d")
        .style("text-anchor", "end")
        .text("# of Volunteers");

      svg.selectAll("bar")
        .data(data)
        .enter().append("rect")
        .style("fill", "steelblue")
        .attr("x", function (d) { return x(d.date); })
        .attr("width", x.bandwidth())
        .attr("y", function (d) { return y(d.value); })
        .attr("height", function (d) { return height - y(d.value); });

      svg.selectAll("text")
        .data(data)
        .enter()
        .append("text")
        .text(function (d) {
          return d.value;
        })
        .attr("text-anchor", "middle")
        .attr("fill", "white")
        .attr("x", function (d, i) {
          return i * (width / data.length);
        })
        .attr("y", function (d) {
          return height - (d * 4);
        });
    });
  }
}

