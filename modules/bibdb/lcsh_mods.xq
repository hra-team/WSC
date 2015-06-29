xquery version "3.0";
declare namespace mods="http://www.loc.gov/mods/v3";
declare default element namespace "http://www.loc.gov/mods/v3";

declare variable $bibdb := collection("/db/apps/wsc-data/bibdb/");

(:The first function transforms all keywords to their corresponding LCSH terms. 
The second function inserts the name of the authority into the subject node. 
The functions use the exist-db specific update syntax. 

For a full list of the  old biodb keywords and the  new subject headings ids see  the FM_2_LCSH.xml file.
The list of LCSH topics for Worddb and Sampledb is in the keywords section of the header of the TermDB Tei file :)

declare function local:topics($nodes as node()*) as node()* {
(:Change contents of  mods:topics from bibdb into corressponding LoC subject headings    :)
    let $nodes := $bibdb//mods:subject
for $n in $nodes//*
return
    switch ($n)
        case "Acoustics" return update value $n/text() with "Sound"
        case "Aeronomy" return update value $n/text() with  "Atmosphere, Upper"
        case "Agriculture and Food Production" return update value $n/text() with  "Agriculture"
        case "Airforce" return update value $n/text() with  "Air forces"
        case "anthropology" return update value $n/text() with "Anthropology"
        case "Applied Geography" return update value $n/text() with "Applied human geography"
        case "Applied Logic" return update value $n/text() with  "Reasoning"
        case "Archaelogy" return update value $n/text() with  "Archaeology"
        case "Architecture, Urban Design" return update value $n/text() with  "City planning"
        case "Army" return update value $n/text() with  "Armed Forces"
        case "Arts" return update value $n/text() with  "Art"
        case "Atmospheric Sciences" return update value $n/text() with  "Atmospheric sciences"
        case "Ausbildung" return update value $n/text() with "Occupational training"
        case "Beverage Production" return update value $n/text() with  "Beverage industry"
        case "Biological Sciences" return update value $n/text() with  "Biology"
        case "Calender" return update value $n/text() with  "Calendar"
        case "Chinese Studies" return update value $n/text() with "China--Study and teaching"
        case "Civil Engineering Works" return update value $n/text() with  "Civil engineering"
        case "Civil Procedural Law" return update value $n/text() with  "Civil procedure"
        case "Comparatistics" return update value $n/text() with  "Cross-cultural studies"
        case "Construction Technology" return update value $n/text() with  "Architecture and technology"
        case "Crop Farming" case "Crop farming" case "Argarwissenschaft" return update value $n/text() with  "Agronomy"
        case "Cultural Anthropology" return update value $n/text() with  "Ethnology"
        case "Daily Life" return update value $n/text() with "Life skills"
        case "Decoration, Functional Design" return update value $n/text() with  "Decorative arts"
        case "Defensive Weaponry" return update value $n/text() with  "Weapons"
        case "Documents" return update value $n/text() with "Legal documents"
        case "Drawing, Painting, Printmaking, Photography" return update value $n/text() with  "Art"
        case "Earth Sciences" return update value $n/text() with  "Earth sciences"
        case "Economy" return update value $n/text() with "Economics"
        case "Economic History" return update value $n/text() with  "Economic history"
        case "Economic Law" return update value $n/text() with  "Law--Economic aspects"
        case "Economic Systems" return update value $n/text() with  "Macroeconomics"
        case "Economic Theory" return update value $n/text() with  "Economics"
        case "Encyclopedia" return update value $n/text() with  "Encyclopedias and dictionaries"
        case "Family Law" return update value $n/text() with  "Domestic relations"
        case "Geological Sciences" return update value $n/text() with  "Earth sciences"
        case "Government Finance" return update value $n/text() with  "Finance, Public"
        case "Gunpowder Weapons" return update value $n/text() with  "Gunpowder"
        case "Historical Anthropology" return update value $n/text() with  "Ethnohistory"
        case "Historical Geography" return update value $n/text() with  "Historical geography"
        case "Historical Linguistics" return update value $n/text() with  "Historical linguistics"
        case "History of Art" return update value $n/text() with  "Art--History"
        case "History of Science" return update value $n/text() with  "Science and civilization"
        case "History of Technology" return update value $n/text() with  "Technology--History"
        case "Housework" return update value $n/text() with  "Housekeeping"
        case "Human Geography" return update value $n/text() with  "Human geography"
        case "Hydrologic Sciences" return update value $n/text() with  "Aquatic sciences"
        case "Hygienics" return update value $n/text() with  "Hygiene"
        case "Industrial Chemistry" return update value $n/text() with  "Chemistry, Technical"
        case "Industry" return update value $n/text() with  "Industries"
        case "Information Processing and Communication" return update value $n/text() with  "Telecommunication"
        case "Inorganic Chemistry" return update value $n/text() with  "Inorganic chemistry"
        case "Intellectual History" return update value $n/text() with  "Intellectual history"
        case "Intelligence" return update value $n/text() with  "Intelligence levels"
        case "International Law" return update value $n/text() with  "International law"
        case "International Relations" return update value $n/text() with  "International relations"
        case "International Trade" return update value $n/text() with  "International trade"
        case "Japan Civilization" return update value $n/text() with  "Japan--Civilization"
        case "Japan Civilization Western Influences" return update value $n/text() with  "Japan--Civilization--Western influences"
        case "Japan Relations Europe" return update value $n/text() with  "Japan--Relations--Europe"
        case "Japanese National Characteristics" return update value $n/text() with  "National characteristics, Japanese"
        case "Journalism and Media" return update value $n/text() with  "Journalism"
        case "Judicial Procedure" return update value $n/text() with  "Procedural law"
        case "Judical Procedure" return update value $n/text() with  "Procedural law"
        case "Knowledge" return update value $n/text() with  "Knowledge, Theory of"
        case "Labour Movement" return update value $n/text() with "Labor movement"
        case "Library Science" return update value $n/text() with  "Library science"
        case "Linguistic Anthropology" return update value $n/text() with  "Anthropological linguistics"
        case "Linguistic Geography" return update value $n/text() with  "Linguistic geography"
        case "Literary Criticism" return update value $n/text() with  "Criticism"
        case "Livestock Farming" case "Livestock farming" return update value $n/text() with  "Livestock"
        case "Mathematical and Statistical Linguistics" return update value $n/text() with  "Mathematical linguistics"
        case "Material Culture" return update value $n/text() with  "Material culture"
        case "Meteoritics" return update value $n/text() with  "Meteors"
        case "Military" case "Military " return update value $n/text() with  "Military art and science"
        case "Mining" return update value $n/text() with  "Mining engineering"
        case "Military History" return update value $n/text() with  "History, Military"
        case "Military Technology" return update value $n/text() with  "Military art and science"
        case "Missionary History" return update value $n/text() with  "Missions--History"
        case "Motion Pictures" return update value $n/text() with  "Motion pictures"
        case "Neologisms" return update value $n/text() with "Words, New"
        case "News (Domestic)" return update value $n/text() with "Press"
        case "News (World)" return update value $n/text() with " Foreign news"
        case "Nuclear and Atomic Physics" return update value $n/text() with  "Nuclear physics"
        case "Obstetrics and Gynecology" return update value $n/text() with  "Women--Health and hygiene"
        case "Organic Chemistry" return update value $n/text() with  "Organic chemistry"
        case "Organismic Biology" return update value $n/text() with  "Organisms"
        case "Organization of Education" return update value $n/text() with  "Education and state"
        case "Overseas Chinese" return update value $n/text() with "Chinese--Foreign countries"
        case "Pedagogy" return update value $n/text() with  "Education"
        case "Philosophical Anthropology" return update value $n/text() with  "Philosophical anthropology"
        case "Philosophical Psychology" return update value $n/text() with  "Psychology--Philosophy"
        case "Philosophy of Art" return update value $n/text() with  "Art--Philosophy"
        case "Philosophy of Education" return update value $n/text() with  "Education--Philosophy"
        case "Philosophy of History" return update value $n/text() with  "History--Philosophy"
        case "Philosophy of Language" return update value $n/text() with  "Language and languages--Philosophy"
        case "Philosophy of Law" return update value $n/text() with  "Law--Philosophy"
        case "Philosophy of Logic" return update value $n/text() with  "Logic"
        case "Philosophy of Mathematics" return update value $n/text() with  "Mathematics--Philosophy"
        case "Philosophy of Nature" return update value $n/text() with  "Philosophy of nature"
        case "Philosophy of Religion" return update value $n/text() with  "Religion--Philosophy"
        case "Philosophy of Science" return update value $n/text() with  "Science--Philosophy"
        case "Physical Anthropology" return update value $n/text() with  "Physical anthropology"
        case "Physical Chemistry" return update value $n/text() with  "Physical chemistry"
        case "Physical Geography" return update value $n/text() with  "Physical geography"
        case "Physical Sciences" return update value $n/text() with  "Physical sciences"
        case "Physiological Psychology" return update value $n/text() with  "Psychophysiology"
        case "Politics" return update value $n/text() with "Politics and government"
        case "Political History" return update value $n/text() with  "World politics"
        case "Political Philosophy" return update value $n/text() with  "Political science--Philosophy"
        case "Political Sciences" return update value $n/text() with  "Political science"
        case "Political Systems" return update value $n/text() with  "Political science"
        case "Population History" return update value $n/text() with  "Population--History"
        case "Private Law" return update value $n/text() with  "Civil law"
        case "Property Law" return update value $n/text() with  "Property--Law and legislation"
        case "Public Administration" return update value $n/text() with  "Public administration"
        case "Public Health" return update value $n/text() with  "Public health"
        case "Public Law" return update value $n/text() with  "Public law"
        case "Public Opinion" return update value $n/text() with  "Public opinion"
        case "Public Welfare Law" return update value $n/text() with  "Public welfare"
        case "Rail Technology" return update value $n/text() with  "Railroads"
        case "Rail Transportation" case "Rail transportation" return update value $n/text() with  "Railroads"
        case "Regional Geography" return update value $n/text() with  "Local geography"
        case "Religious Life and Institutions" return update value $n/text() with  "Religion and the humanities"
        case "Research Methods" return update value $n/text() with  "Methodology"
        case "Revolution" return update value $n/text() with "Revolutions"
        case "Roads and Highways" return update value $n/text() with  "Roads"
        case "Sciences in general" case "Natural Science" return update value $n/text() with  "Science"
        case "Sectoral Economics" return update value $n/text() with  "Economic specialization"
        case "Social Life" return update value $n/text() with  "Manners and customs"
        case "Social Psychology" return update value $n/text() with  "Social psychology"
        case "Social Sciences"  case "Social Science" return update value $n/text() with  "Social sciences"
        case "Sports Science" return update value $n/text() with "Sports sciences"
        case "Taxation Law" return update value $n/text() with  "Taxation"
        case "Technology of Earth and Space Exploration" return update value $n/text() with  "Planets--Exploration"
        case "Technology of the Major Industries" return update value $n/text() with  "Machinery"
        case "Technology of the Urban Community" return update value $n/text() with  "City and town life"
        case "Terminological Standardization" case "Terminological Standardisation" return update value $n/text() with  "Standardization"
        case "Theory" return update value $n/text() with "Theory (Philosophy)"
        case "Trade" return update value $n/text() with "Commerce"
        case "Translation" case "Translations" return update value $n/text() with  "Translating and interpreting"
        case "Transportation Technology" return update value $n/text() with  "Transportation"
        case "Travelogues" return update value $n/text() with "Travelers' writings"
        case "Understanding of Religion" return update value $n/text() with  "Religious thought"
        case "Water Transportation" case "Water transportation" return update value $n/text() with  "Shipping"
        case "Women’s Movement" return update value $n/text() with "Feminism"
        default return $n
};

declare function local:subjects($nodes as node()*) as node()* {
(:  Insert authority refernce for LoC subject headings into mods:subject   :)
    let $nodes := $bibdb//mods:subject
for $n in $nodes
return update insert attribute authority {'lcsh'} into $n
};

let $mods := $bibdb
return local:topics($mods)