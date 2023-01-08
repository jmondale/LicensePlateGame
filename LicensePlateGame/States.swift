//
//  Util.swift
//  LicensePlateGame
//
//  Created by Jaye Mondale on 2/18/16.
//  Copyright © 2016 5mConsult. All rights reserved.
//

import Foundation

class States {
    
    var items: [LicensePlateItem]
    
    required init?() {
        
        items = [LicensePlateItem]()
        
        let state01 = LicensePlateItem()
        state01.stateName = "Alabama"
        state01.stateCapital = "Montgomery"
        state01.yearEstablished = "Dec. 14, 1819"
        state01.yearSettled = "1702"
        state01.stateOrder = "22"
        state01.checked = false
        state01.stateFlagImageName = "alabama"
        items.append(state01)
        
        let state02 = LicensePlateItem()
        state02.stateName = "Alaska"
        state02.stateCapital = "Juneau"
        state02.yearEstablished = "Jan. 3, 1959"
        state02.yearSettled = "1784"
        state02.stateOrder = "49"
        state02.checked = false
        state02.stateFlagImageName = "alaska"
        items.append(state02)
        
        let state03 = LicensePlateItem()
        state03.stateName = "Arizona"
        state03.stateCapital = "Phoenix"
        state03.yearEstablished = "Feb. 14, 1912"
        state03.yearSettled = "1776"
        state03.stateOrder = "48"
        state03.checked = false
        state03.stateFlagImageName = "arizona"
        items.append(state03)
        
        let state04 = LicensePlateItem()
        state04.stateName = "Arkansas"
        state04.stateCapital = "Little Rock"
        state04.yearEstablished = "June 15, 1836"
        state04.yearSettled = "1686"
        state04.stateOrder = "25"
        state04.checked = false
        state04.stateFlagImageName = "arkansas"
        items.append(state04)
        
        let state05 = LicensePlateItem()
        state05.stateName = "California"
        state05.stateCapital = "Sacramento"
        state05.yearEstablished = "Sept. 9, 1850"
        state05.yearSettled = "1769"
        state05.stateOrder = "31"
        state05.checked = false
        state05.stateFlagImageName = "california"
        items.append(state05)
        
        let state06 = LicensePlateItem()
        state06.stateName = "Colorado"
        state06.stateCapital = "Denver"
        state06.yearEstablished = "Aug. 1, 1876"
        state06.yearSettled = "1858"
        state06.stateOrder = "38"
        state06.checked = false
        state06.stateFlagImageName = "colorado"
        items.append(state06)
        
        let state07 = LicensePlateItem()
        state07.stateName = "Connecticut"
        state07.stateCapital = "Hartford"
        state07.yearEstablished = "Jan. 9, 1788"
        state07.yearSettled = "1634"
        state07.stateOrder = "5"
        state07.checked = false
        state07.stateFlagImageName = "connecticut"
        items.append(state07)
        
        let state08 = LicensePlateItem()
        state08.stateName = "Delaware"
        state08.stateCapital = "Dover"
        state08.yearEstablished = "December 7, 1787"
        state08.yearSettled = "1638"
        state08.stateOrder = "1"
        state08.checked = false
        state08.stateFlagImageName = "delaware"
        items.append(state08)
        
        let state09 = LicensePlateItem()
        state09.stateName = "Florida"
        state09.stateCapital = "Tallahassee"
        state09.yearEstablished = "March 3, 1845"
        state09.yearSettled = "1565"
        state09.stateOrder = "27"
        state09.checked = false
        state09.stateFlagImageName = "florida"
        items.append(state09)
        
        let state10 = LicensePlateItem()
        state10.stateName = "Georgia"
        state10.stateCapital = "Atlanta"
        state10.yearEstablished = "Jan. 2, 1788"
        state10.yearSettled = "1733"
        state10.stateOrder = "4"
        state10.checked = false
        state10.stateFlagImageName = "georgia"
        items.append(state10)
        
        let state11 = LicensePlateItem()
        state11.stateName = "Hawaii"
        state11.stateCapital = "Honolulu"
        state11.yearEstablished = "Aug. 21, 1959"
        state11.yearSettled = "1820"
        state11.stateOrder = "50"
        state11.checked = false
        state11.stateFlagImageName = "hawaii"
        items.append(state11)
        
        let state12 = LicensePlateItem()
        state12.stateName = "Idaho"
        state12.stateCapital = "Boise"
        state12.yearEstablished = "July 3, 1890"
        state12.yearSettled = "1842"
        state12.stateOrder = "43"
        state12.checked = false
        state12.stateFlagImageName = "idaho"
        items.append(state12)
        
        let state13 = LicensePlateItem()
        state13.stateName = "Illinois"
        state13.stateCapital = "Springfield"
        state13.yearEstablished = "Dec. 3, 1818"
        state13.yearSettled = "1720"
        state13.stateOrder = "21"
        state13.checked = false
        state13.stateFlagImageName = "illinois"
        items.append(state13)
        
        let state14 = LicensePlateItem()
        state14.stateName = "Indiana"
        state14.stateCapital = "Indianapolis"
        state14.yearEstablished = "Dec. 11, 1816"
        state14.yearSettled = "1733"
        state14.stateOrder = "19"
        state14.checked = false
        state14.stateFlagImageName = "indiana"
        items.append(state14)
        
        let state15 = LicensePlateItem()
        state15.stateName = "Iowa"
        state15.stateCapital = "Des Moines"
        state15.yearEstablished = "Dec. 28, 1846"
        state15.yearSettled = "1788"
        state15.stateOrder = "29"
        state15.checked = false
        state15.stateFlagImageName = "iowa"
        items.append(state15)
        
        let state16 = LicensePlateItem()
        state16.stateName = "Kansas"
        state16.stateCapital = "Topeka"
        state16.yearEstablished = "Jan. 29, 1861"
        state16.yearSettled = "1727"
        state16.stateOrder = "34"
        state16.checked = false
        state16.stateFlagImageName = "kansas"
        items.append(state16)
        
        let state17 = LicensePlateItem()
        state17.stateName = "Kentucky"
        state17.stateCapital = "Frankfort"
        state17.yearEstablished = "June 1, 1792"
        state17.yearSettled = "1774"
        state17.stateOrder = "15"
        state17.checked = false
        state17.stateFlagImageName = "kentucky"
        items.append(state17)
        
        let state18 = LicensePlateItem()
        state18.stateName = "Louisiana"
        state18.stateCapital = "Baton Rouge"
        state18.yearEstablished = "Apr. 30, 1812"
        state18.yearSettled = "1699"
        state18.stateOrder = "18"
        state18.checked = false
        state18.stateFlagImageName = "louisiana"
        items.append(state18)
        
        let state19 = LicensePlateItem()
        state19.stateName = "Maine"
        state19.stateCapital = "Augusta"
        state19.yearEstablished = "Mar. 15, 1820"
        state19.yearSettled = "1624"
        state19.stateOrder = "23"
        state19.checked = false
        state19.stateFlagImageName = "maine"
        items.append(state19)
        
        let state20 = LicensePlateItem()
        state20.stateName = "Maryland"
        state20.stateCapital = "Annapolis"
        state20.yearEstablished = "Apr. 28, 1788"
        state20.yearSettled = "1634"
        state20.stateOrder = "7"
        state20.checked = false
        state20.stateFlagImageName = "maryland"
        items.append(state20)
        
        let state21 = LicensePlateItem()
        state21.stateName = "Massachusetts"
        state21.stateCapital = "Boston"
        state21.yearEstablished = "Feb. 6, 1788"
        state21.yearSettled = "1620"
        state21.stateOrder = "6"
        state21.checked = false
        state21.stateFlagImageName = "massachusetts"
        items.append(state21)
        
        let state22 = LicensePlateItem()
        state22.stateName = "Michigan"
        state22.stateCapital = "Lansing"
        state22.yearEstablished = "Jan. 26, 1837"
        state22.yearSettled = "1668"
        state22.stateOrder = "26"
        state22.checked = false
        state22.stateFlagImageName = "michigan"
        items.append(state22)
        
        let state23 = LicensePlateItem()
        state23.stateName = "Minnesota"
        state23.stateCapital = "Saint Paul"
        state23.yearEstablished = "May 11, 1858"
        state23.yearSettled = "1805"
        state23.stateOrder = "32"
        state23.checked = false
        state23.stateFlagImageName = "minnesota"
        items.append(state23)
        
        let state24 = LicensePlateItem()
        state24.stateName = "Mississippi"
        state24.stateCapital = "Jackson"
        state24.yearEstablished = "Dec. 10, 1817"
        state24.yearSettled = "1699"
        state24.stateOrder = "20"
        state24.checked = false
        state24.stateFlagImageName = "mississippi"
        items.append(state24)
        
        let state25 = LicensePlateItem()
        state25.stateName = "Missouri"
        state25.stateCapital = "Jefferson City"
        state25.yearEstablished = "Aug. 10, 1821"
        state25.yearSettled = "1735"
        state25.stateOrder = "24"
        state25.checked = false
        state25.stateFlagImageName = "missouri"
        items.append(state25)
        
        let state26 = LicensePlateItem()
        state26.stateName = "Montana"
        state26.stateCapital = "Helena"
        state26.yearEstablished = "Nov. 8, 1889"
        state26.yearSettled = "1809"
        state26.stateOrder = "41"
        state26.checked = false
        state26.stateFlagImageName = "montana"
        items.append(state26)
        
        let state27 = LicensePlateItem()
        state27.stateName = "Nebraska"
        state27.stateCapital = "Lincoln"
        state27.yearEstablished = "Mar. 1, 1867"
        state27.yearSettled = "1823"
        state27.stateOrder = "37"
        state27.checked = false
        state27.stateFlagImageName = "nebraska"
        items.append(state27)
        
        let state28 = LicensePlateItem()
        state28.stateName = "Nevada"
        state28.stateCapital = "Carson City"
        state28.yearEstablished = "Oct. 31, 1864"
        state28.yearSettled = "1849"
        state28.stateOrder = "36"
        state28.checked = false
        state28.stateFlagImageName = "nevada"
        items.append(state28)
        
        let state29 = LicensePlateItem()
        state29.stateName = "New Hampshire"
        state29.stateCapital = "Concord"
        state29.yearEstablished = "June 21, 1788"
        state29.yearSettled = "1623"
        state29.stateOrder = "9"
        state29.checked = false
        state29.stateFlagImageName = "newhampshire"
        items.append(state29)
        
        let state30 = LicensePlateItem()
        state30.stateName = "New Jersey"
        state30.yearEstablished = "Dec. 18, 1787"
        state30.stateCapital = "Trenton"
        state30.yearSettled = "1660"
        state30.stateOrder = "3"
        state30.checked = false
        state30.stateFlagImageName = "newjersey"
        items.append(state30)
        
        let state31 = LicensePlateItem()
        state31.stateName = "New Mexico"
        state31.stateCapital = "Santa Fe"
        state31.yearEstablished = "Jan. 6, 1912"
        state31.yearSettled = "1610"
        state31.stateOrder = "47"
        state31.checked = false
        state31.stateFlagImageName = "newmexico"
        items.append(state31)
        
        let state32 = LicensePlateItem()
        state32.stateName = "New York"
        state32.stateCapital = "Albany"
        state32.yearEstablished = "July 26, 1788"
        state32.yearSettled = "1614"
        state32.stateOrder = "11"
        state32.checked = false
        state32.stateFlagImageName = "newyork"
        items.append(state32)
        
        let state33 = LicensePlateItem()
        state33.stateName = "North Carolina"
        state33.stateCapital = "Raleigh"
        state33.yearEstablished = "Nov. 21, 1789"
        state33.yearSettled = "1660"
        state33.stateOrder = "12"
        state33.checked = false
        state33.stateFlagImageName = "northcarolina"
        items.append(state33)
        
        let state34 = LicensePlateItem()
        state34.stateName = "North Dakota"
        state34.stateCapital = "Bismarck"
        state34.yearEstablished = "Nov. 2, 1889"
        state34.yearSettled = "1812"
        state34.stateOrder = "39"
        state34.checked = false
        state34.stateFlagImageName = "northdakota"
        items.append(state34)
        
        let state35 = LicensePlateItem()
        state35.stateName = "Ohio"
        state35.stateCapital = "Columbus"
        state35.yearEstablished = "Mar. 1, 1803"
        state35.yearSettled = "1788"
        state35.stateOrder = "17"
        state35.checked = false
        state35.stateFlagImageName = "ohio"
        items.append(state35)
        
        let state36 = LicensePlateItem()
        state36.stateName = "Oklahoma"
        state36.stateCapital = "Oklahoma City"
        state36.yearEstablished = "Nov. 16, 1907"
        state36.yearSettled = "1889"
        state36.stateOrder = "46"
        state36.checked = false
        state36.stateFlagImageName = "oklahoma"
        items.append(state36)
        
        let state37 = LicensePlateItem()
        state37.stateName = "Oregon"
        state37.stateCapital = "Salem"
        state37.yearEstablished = "Feb. 14, 1859"
        state37.yearSettled = "1811"
        state37.stateOrder = "33"
        state37.checked = false
        state37.stateFlagImageName = "oregon"
        items.append(state37)
        
        let state38 = LicensePlateItem()
        state38.stateName = "Pennsylvania"
        state38.stateCapital = "Harrisburg"
        state38.yearEstablished = "Dec. 12, 1787"
        state38.yearSettled = "1682"
        state38.stateOrder = "2"
        state38.checked = false
        state38.stateFlagImageName = "pennsylvania"
        items.append(state38)
        
        let state39 = LicensePlateItem()
        state39.stateName = "Rhode Island"
        state39.stateCapital = "Providence"
        state39.yearEstablished = "May 29, 1790"
        state39.yearSettled = "1636"
        state39.stateOrder = "13"
        state39.checked = false
        state39.stateFlagImageName = "rhodeisland"
        items.append(state39)
        
        let state40 = LicensePlateItem()
        state40.stateName = "South Carolina"
        state40.stateCapital = "Columbia"
        state40.yearEstablished = "May 23, 1788"
        state40.yearSettled = "1670"
        state40.stateOrder = "8"
        state40.checked = false
        state40.stateFlagImageName = "southcarolina"
        items.append(state40)
        
        let state41 = LicensePlateItem()
        state41.stateName = "South Dakota"
        state41.stateCapital = "Pierre"
        state41.yearEstablished = "Nov. 2, 1889"
        state41.yearSettled = "1859"
        state41.stateOrder = "40"
        state41.checked = false
        state41.stateFlagImageName = "southdakota"
        items.append(state41)
        
        let state42 = LicensePlateItem()
        state42.stateName = "Tennessee"
        state42.stateCapital = "Nashville"
        state42.yearEstablished = "June 1, 1796"
        state42.yearSettled = "1769"
        state42.stateOrder = "16"
        state42.checked = false
        state42.stateFlagImageName = "tennessee"
        items.append(state42)
        
        let state43 = LicensePlateItem()
        state43.stateName = "Texas"
        state43.stateCapital = "Austin"
        state43.yearEstablished = "Dec. 29, 1845"
        state43.yearSettled = "1682"
        state43.stateOrder = "28"
        state43.checked = false
        state43.stateFlagImageName = "texas"
        items.append(state43)
        
        let state44 = LicensePlateItem()
        state44.stateName = "Utah"
        state44.stateCapital = "Salt Lake City"
        state44.yearEstablished = "Jan. 4, 1896"
        state44.yearSettled = "1847"
        state44.stateOrder = "45"
        state44.checked = false
        state44.stateFlagImageName = "utah"
        items.append(state44)
        
        let state45 = LicensePlateItem()
        state45.stateName = "Vermont"
        state45.stateCapital = "Montpelier"
        state45.yearEstablished = "March 4, 1791"
        state45.yearSettled = "1724"
        state45.stateOrder = "14"
        state45.checked = false
        state45.stateFlagImageName = "vermont"
        items.append(state45)
        
        let state46 = LicensePlateItem()
        state46.stateName = "Virginia"
        state46.stateCapital = "Richmond"
        state46.yearEstablished = "June 25, 1788"
        state46.yearSettled = "1607"
        state46.stateOrder = "10"
        state46.checked = false
        state46.stateFlagImageName = "virginia"
        items.append(state46)
        
        let state47 = LicensePlateItem()
        state47.stateName = "Washington"
        state47.stateCapital = "Olympia"
        state47.yearEstablished = "Nov. 11, 1889"
        state47.yearSettled = "1811"
        state47.stateOrder = "42"
        state47.checked = false
        state47.stateFlagImageName = "washington"
        items.append(state47)
        
        let state48 = LicensePlateItem()
        state48.stateName = "West Virginia"
        state48.stateCapital = "Charleston"
        state48.yearEstablished = "June 20, 1863"
        state48.yearSettled = "1727"
        state48.stateOrder = "35"
        state48.checked = false
        state48.stateFlagImageName = "westvirginia"
        items.append(state48)
        
        let state49 = LicensePlateItem()
        state49.stateName = "Wisconsin"
        state49.stateCapital = "Madison"
        state49.yearEstablished = "May 29, 1848"
        state49.yearSettled = "1766"
        state49.stateOrder = "30"
        state49.checked = false
        state49.stateFlagImageName = "wisconsin"
        items.append(state49)
        
        let state50 = LicensePlateItem()
        state50.stateName = "Wyoming"
        state50.stateCapital = "Cheyenne"
        state50.yearEstablished = "July 10, 1890"
        state50.yearSettled = "1834"
        state50.stateOrder = "44"
        state50.checked = false
        state50.stateFlagImageName = "wyoming"
        items.append(state50)
        
        let state51 = LicensePlateItem()
        state51.stateName = "Washington, D.C."
        state51.stateCapital = "Nations Capital"
        state51.yearEstablished = "July 10, 1890"
        state51.yearSettled = "1834"
        state51.stateOrder = "44"
        state51.checked = false
        state51.stateFlagImageName = "districtofcolumbia"
        items.append(state51)
    }
}
