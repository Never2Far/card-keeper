
sports = ["Basketball", "Baseball", "Football", "Soccer", "Hockey"]


sports.each do |sport|
    Sport.create(name: sport)
end

basketball_positions = ["Point Guard", "Shooting Guard", "Small Forward", "Power Forward", "Center", "Coach"]
basketball_teams = ["Atlanta Hawks",
    "Boston Celtics",
    "Brooklyn Nets",
    "Charlotte Hornets",
    "Chicago Bulls",
    "Cleveland Cavaliers",
    "Dallas Mavericks",
    "Denver Nuggets",
    "Detroit Pistons",
    "Golden State Warriors",
    "Houston Rockets",
    "Indiana Pacers",
    "Los Angeles Clippers",
    "Los Angeles Lakers",
    "Memphis Grizzlies",
    "Miami Heat",
    "Milwaukee Bucks",
    "Minnesota Timberwolves",
    "New Orleans Pelicans",
    "New York Knicks",
    "Oklahoma City Thunder",
    "Orlando Magic",
    "Philadelphia 76ers",
    "Phoenix Suns",
    "Portland Trail Blazers",
    "Sacramento Kings",
    "San Antonio Spurs",
    "Toronto Raptors",
    "Utah Jazz",
    "Washington Wizards"]
basketball_id = Sport.find_by(name: "Basketball").id

basketball_positions.each do |pos|
    Position.create(
        name: pos,
        sport_id: basketball_id
    )
end

basketball_teams.each do |team|
    Team.create(
        name: team,
        sport_id: basketball_id
    )
end

baseball_teams = ["Arizona Diamondbacks",
"Atlanta Braves",
"Baltimore Orioles",
"Boston Red Sox",
"Chicago White Sox",
"Chicago Cubs",
"Cincinnati Reds",
"Cleveland Indians",
"Colorado Rockies",
"Detroit Tigers",
"Houston Astros",
"Kansas City Royals",
"Los Angeles Angels",
"Los Angeles Dodgers",
"Miami Marlins",
"Milwaukee Brewers",
"Minnesota Twins",
"New York Yankees",
"New York Mets",
"Oakland Athletics",
"Philadelphia Phillies",
"Pittsburgh Pirates",
"San Diego Padres",
"San Francisco Giants",
"Seattle Mariners",
"St. Louis Cardinals",
"Tampa Bay Rays",
"Texas Rangers",
"Toronto Blue Jays",
"Washington Nationals"]

baseball_positions = ["Pitcher", "Catcher", "First Baseman", "Second Baseman", "Third Baseman", "Shortstop", "Left Fielder", "Center Fielder", "Right Fielder", "Coach", "Designated Hitter"]
baseball_id = Sport.find_by(name: "Baseball").id

baseball_positions.each do |pos|
    Position.create(
        name: pos,
        sport_id: baseball_id
    )
end

baseball_teams.each do |team|
    Team.create(
        name: team,
        sport_id: baseball_id
    )
end

football_teams = ["Arizona Cardinals",
"Atlanta Falcons",
"Baltimore Ravens",
"Buffalo Bills",
"Carolina Panthers",
"Chicago Bears",
"Cincinnati Bengals",
"Cleveland Browns",
"Dallas Cowboys",
"Denver Broncos",
"Detroit Lions",
"Green Bay Packers",
"Houston Texans",
"Indianapolis Colts",
"Jacksonville Jaguars",
"Kansas City Chiefs",
"Los Angeles Chargers",
"Los Angeles Rams",
"Miami Dolphins",
"Minnesota Vikings",
"New England Patriots",
"New Orleans Saints",
"New York Giants",
"New York Jets",
"Oakland Raiders",
"Philadelphia Eagles",
"Pittsburgh Steelers",
"San Francisco 49ers",
"Seattle Seahawks",
"Tampa Bay Buccaneers",
"Tennessee Titans",
"Washington Redskins"]


football_positions = ["Center", "Offensive Guard", "Offensive Tackle", "Quarterback", "Running Back","Wide Receiver", "Tight End", "Defensive Tackle", "Defensive End", "Middle Linebacker", "Outside Linebacker", "Cornerback", "Safety", "Kicker", "Punter"]
football_id = Sport.find_by(name: "Football").id

football_positions.each do |pos|
    Position.create(
        name: pos,
        sport_id: football_id
    )
end

football_teams.each do |team|
    Team.create(
        name: team,
        sport_id: football_id
    )
end

soccer_positions = ["Goalkeeper", "Center-Back", "Sweeper", "Full-Back", "Wing-Back", "Center Midfield", "Defensive Midfield", "Attacking Midfield", "Wide Midfield", "Center Forward", "Second Striker", "Winger"]
soccer_id = Sport.find_by(name: "Soccer").id

soccer_positions.each do |pos|
    Position.create(
        name: pos,
        sport_id: soccer_id
    )
end

soccer_teams = ["Atlanta United FC",
"Chicago Fire",
"Colorado Rapids",
"Columbus Crew SC",
"D.C. United",
"FC Dallas",
"Houston Dynamo",
"LA Galaxy",
"Los Angeles FC",
"Minnesota United FC",
"Montreal Impact",
"New England Revolution",
"New York City FC",
"New York Red Bulls",
"Orlando City SC",
"Philadelphia Union",
"Portland Timbers",
"Real Salt Lake",
"San Jose Earthquakes",
"Seattle Sounders FC",
"Sporting Kansas City",
"Toronto FC",
"Vancouver Whitecaps FC"]

soccer_teams.each do |team|
    Team.create(
        name: team,
        sport_id: soccer_id
    )
end

hockey_teams = ["Anaheim Ducks",
"Arizona Coyotes",
"Boston Bruins",
"Buffalo Sabres",
"Calgary Flames",
"Carolina Hurricanes",
"Chicago Blackhawks",
"Colorado Avalanche",
"Columbus Blue Jackets",
"Dallas Stars",
"Detroit Red Wings",
"Edmonton Oilers",
"Florida Panthers",
"Los Angeles Kings",
"Minnesota Wild",
"Montreal Canadiens",
"Nashville Predators",
"New Jersey Devils",
"New York Islanders",
"New York Rangers",
"Ottawa Senators",
"Philadelphia Flyers",
"Pittsburgh Penguins",
"San Jose Sharks",
"St. Louis Blues",
"Tampa Bay Lightning",
"Toronto Maple Leafs",
"Vancouver Canucks",
"Vegas Golden Knights",
"Washington Capitals",
"Winnipeg Jets"]

hockey_positions = ["Center", "Goaltender", "Left Defenseman", "Right Defenseman", "Right Winger", "Left Winger"]
hockey_id = Sport.find_by(name: "Hockey").id

hockey_positions.each do |pos|
    Position.create(
        name: pos,
        sport_id: hockey_id
    )
end

hockey_teams.each do |team|
    Team.create(
        name: team,
        sport_id: hockey_id
    )
end