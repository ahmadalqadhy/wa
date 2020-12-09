# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Legislator.destroy_all
Post.destroy_all

legislator01 = Legislator.create!({name: "Alexandra Ocasio-Cortez", chamber: "house", party: "democrat"})
legislator02 = Legislator.create!({name: "Dan Sullivan", chamber: "senate", party: "republican"})

post01 = Post.create!({title: "Green New Deal", status: "introduced", body: "116th CONGRESS

1st Session

H. RES. 109

IN THE HOUSE OF REPRESENTATIVES

February 7, 2019

Ms. Ocasio-Cortez (for herself, Mr. Hastings, Ms. Tlaib, Mr. Serrano, Mrs. Carolyn B. Maloney of New York, Mr. Vargas, Mr. Espaillat, Mr. Lynch, Ms. Velázquez, Mr. Blumenauer, Mr. Brendan F. Boyle of Pennsylvania, Mr. Castro of Texas, Ms. Clarke of New York, Ms. Jayapal, Mr. Khanna, Mr. Ted Lieu of California, Ms. Pressley, Mr. Welch, Mr. Engel, Mr. Neguse, Mr. Nadler, Mr. McGovern, Mr. Pocan, Mr. Takano, Ms. Norton, Mr. Raskin, Mr. Connolly, Mr. Lowenthal, Ms. Matsui, Mr. Thompson of California, Mr. Levin of California, Ms. Pingree, Mr. Quigley, Mr. Huffman, Mrs. Watson Coleman, Mr. García of Illinois, Mr. Higgins of New York, Ms. Haaland, Ms. Meng, Mr. Carbajal, Mr. Cicilline, Mr. Cohen, Ms. Clark of Massachusetts, Ms. Judy Chu of California, Ms. Mucarsel-Powell, Mr. Moulton, Mr. Grijalva, Mr. Meeks, Mr. Sablan, Ms. Lee of California, Ms. Bonamici, Mr. Sean Patrick Maloney of New York, Ms. Schakowsky, Ms. DeLauro, Mr. Levin of Michigan, Ms. McCollum, Mr. DeSaulnier, Mr. Courtney, Mr. Larson of Connecticut, Ms. Escobar, Mr. Schiff, Mr. Keating, Mr. DeFazio, Ms. Eshoo, Mrs. Trahan, Mr. Gomez, Mr. Kennedy, and Ms. Waters) submitted the following resolution; which was referred to the Committee on Energy and Commerce, and in addition to the Committees on Science, Space, and Technology, Education and Labor, Transportation and Infrastructure, Agriculture, Natural Resources, Foreign Affairs, Financial Services, the Judiciary, Ways and Means, and Oversight and Reform, for a period to be subsequently determined by the Speaker, in each case for consideration of such provisions as fall within the jurisdiction of the committee concerned

RESOLUTION

Recognizing the duty of the Federal Government to create a Green New Deal.

Whereas the October 2018 report entitled Special Report on Global Warming of 1.5 ºC by the Intergovernmental Panel on Climate Change and the November 2018 Fourth National Climate Assessment report found that—

(1)human activity is the dominant cause of observed climate change over the past century;
(2)a changing climate is causing sea levels to rise and an increase in wildfires, severe storms, droughts, and other extreme weather events that threaten human life, healthy communities, and critical infrastructure;
(3)global warming at or above 2 degrees Celsius beyond preindustrialized levels will cause—
(A)mass migration from the regions most affected by climate change;
(B)more than $500,000,000,000 in lost annual economic output in the United States by the year 2100;
(C)wildfires that, by 2050, will annually burn at least twice as much forest area in the western United States than was typically burned by wildfires in the years preceding 2019;
(D)a loss of more than 99 percent of all coral reefs on Earth;
(E)more than 350,000,000 more people to be exposed globally to deadly heat stress by 2050; and
(F)a risk of damage to $1,000,000,000,000 of public infrastructure and coastal real estate in the United States; and
(4)global temperatures must be kept below 1.5 degrees Celsius above preindustrialized levels to avoid the most severe impacts of a changing climate, which will require—
(A)global reductions in greenhouse gas emissions from human sources of 40 to 60 percent from 2010 levels by 2030; and
(B)net-zero global emissions by 2050;
Whereas, because the United States has historically been responsible for a disproportionate amount of greenhouse gas emissions, having emitted 20 percent of global greenhouse gas emissions through 2014, and has a high technological capacity, the United States must take a leading role in reducing emissions through economic transformation;

Whereas the United States is currently experiencing several related crises, with—

(1)life expectancy declining while basic needs, such as clean air, clean water, healthy food, and adequate health care, housing, transportation, and education, are inaccessible to a significant portion of the United States population;
(2)a 4-decade trend of wage stagnation, deindustrialization, and antilabor policies that has led to—
(A)hourly wages overall stagnating since the 1970s despite increased worker productivity;
(B)the third-worst level of socioeconomic mobility in the developed world before the Great Recession;
(C)the erosion of the earning and bargaining power of workers in the United States; and
(D)inadequate resources for public sector workers to confront the challenges of climate change at local, State, and Federal levels; and
(3)the greatest income inequality since the 1920s, with—
(A)the top 1 percent of earners accruing 91 percent of gains in the first few years of economic recovery after the Great Recession;
(B)a large racial wealth divide amounting to a difference of 20 times more wealth between the average white family and the average black family; and
(C)a gender earnings gap that results in women earning approximately 80 percent as much as men, at the median;
Whereas climate change, pollution, and environmental destruction have exacerbated systemic racial, regional, social, environmental, and economic injustices (referred to in this preamble as systemic injustices) by disproportionately affecting indigenous peoples, communities of color, migrant communities, deindustrialized communities, depopulated rural communities, the poor, low-income workers, women, the elderly, the unhoused, people with disabilities, and youth (referred to in this preamble as frontline and vulnerable communities);

Whereas, climate change constitutes a direct threat to the national security of the United States—

(1)by impacting the economic, environmental, and social stability of countries and communities around the world; and
(2)by acting as a threat multiplier;
Whereas the Federal Government-led mobilizations during World War II and the New Deal created the greatest middle class that the United States has ever seen, but many members of frontline and vulnerable communities were excluded from many of the economic and societal benefits of those mobilizations; and

Whereas the House of Representatives recognizes that a new national, social, industrial, and economic mobilization on a scale not seen since World War II and the New Deal era is a historic opportunity—

(1)to create millions of good, high-wage jobs in the United States;
(2)to provide unprecedented levels of prosperity and economic security for all people of the United States; and
(3)to counteract systemic injustices: Now, therefore, be it
That it is the sense of the House of Representatives that—
(1)it is the duty of the Federal Government to create a Green New Deal—
(A)to achieve net-zero greenhouse gas emissions through a fair and just transition for all communities and workers;
(B)to create millions of good, high-wage jobs and ensure prosperity and economic security for all people of the United States;
(C)to invest in the infrastructure and industry of the United States to sustainably meet the challenges of the 21st century;
(D)to secure for all people of the United States for generations to come—
(i)clean air and water;
(ii)climate and community resiliency;
(iii)healthy food;
(iv)access to nature; and
(v)a sustainable environment; and
(E)to promote justice and equity by stopping current, preventing future, and repairing historic oppression of indigenous peoples, communities of color, migrant communities, deindustrialized communities, depopulated rural communities, the poor, low-income workers, women, the elderly, the unhoused, people with disabilities, and youth (referred to in this resolution as frontline and vulnerable communities);
(2)the goals described in subparagraphs (A) through (E) of paragraph (1) (referred to in this resolution as the Green New Deal goals) should be accomplished through a 10-year national mobilization (referred to in this resolution as the Green New Deal mobilization) that will require the following goals and projects—
(A)building resiliency against climate change-related disasters, such as extreme weather, including by leveraging funding and providing investments for community-defined projects and strategies;
(B)repairing and upgrading the infrastructure in the United States, including—
(i)by eliminating pollution and greenhouse gas emissions as much as technologically feasible;
(ii)by guaranteeing universal access to clean water;
(iii)by reducing the risks posed by climate impacts; and
(iv)by ensuring that any infrastructure bill considered by Congress addresses climate change;
(C)meeting 100 percent of the power demand in the United States through clean, renewable, and zero-emission energy sources, including—
(i)by dramatically expanding and upgrading renewable power sources; and
(ii)by deploying new capacity;
(D)building or upgrading to energy-efficient, distributed, and smart power grids, and ensuring affordable access to electricity;
(E)upgrading all existing buildings in the United States and building new buildings to achieve maximum energy efficiency, water efficiency, safety, affordability, comfort, and durability, including through electrification;
(F)spurring massive growth in clean manufacturing in the United States and removing pollution and greenhouse gas emissions from manufacturing and industry as much as is technologically feasible, including by expanding renewable energy manufacturing and investing in existing manufacturing and industry;
(G)working collaboratively with farmers and ranchers in the United States to remove pollution and greenhouse gas emissions from the agricultural sector as much as is technologically feasible, including—
(i)by supporting family farming;
(ii)by investing in sustainable farming and land use practices that increase soil health; and
(iii)by building a more sustainable food system that ensures universal access to healthy food;
(H)overhauling transportation systems in the United States to remove pollution and greenhouse gas emissions from the transportation sector as much as is technologically feasible, including through investment in—
(i)zero-emission vehicle infrastructure and manufacturing;
(ii)clean, affordable, and accessible public transit; and
(iii)high-speed rail;
(I)mitigating and managing the long-term adverse health, economic, and other effects of pollution and climate change, including by providing funding for community-defined projects and strategies;
(J)removing greenhouse gases from the atmosphere and reducing pollution by restoring natural ecosystems through proven low-tech solutions that increase soil carbon storage, such as land preservation and afforestation;
(K)restoring and protecting threatened, endangered, and fragile ecosystems through locally appropriate and science-based projects that enhance biodiversity and support climate resiliency;
(L)cleaning up existing hazardous waste and abandoned sites, ensuring economic development and sustainability on those sites;
(M)identifying other emission and pollution sources and creating solutions to remove them; and
(N)promoting the international exchange of technology, expertise, products, funding, and services, with the aim of making the United States the international leader on climate action, and to help other countries achieve a Green New Deal;
(3)a Green New Deal must be developed through transparent and inclusive consultation, collaboration, and partnership with frontline and vulnerable communities, labor unions, worker cooperatives, civil society groups, academia, and businesses; and
(4)to achieve the Green New Deal goals and mobilization, a Green New Deal will require the following goals and projects—
(A)providing and leveraging, in a way that ensures that the public receives appropriate ownership stakes and returns on investment, adequate capital (including through community grants, public banks, and other public financing), technical expertise, supporting policies, and other forms of assistance to communities, organizations, Federal, State, and local government agencies, and businesses working on the Green New Deal mobilization;
(B)ensuring that the Federal Government takes into account the complete environmental and social costs and impacts of emissions through—
(i)existing laws;
(ii)new policies and programs; and
(iii)ensuring that frontline and vulnerable communities shall not be adversely affected;
(C)providing resources, training, and high-quality education, including higher education, to all people of the United States, with a focus on frontline and vulnerable communities, so that all people of the United States may be full and equal participants in the Green New Deal mobilization;
(D)making public investments in the research and development of new clean and renewable energy technologies and industries;
(E)directing investments to spur economic development, deepen and diversify industry and business in local and regional economies, and build wealth and community ownership, while prioritizing high-quality job creation and economic, social, and environmental benefits in frontline and vulnerable communities, and deindustrialized communities, that may otherwise struggle with the transition away from greenhouse gas intensive industries;
(F)ensuring the use of democratic and participatory processes that are inclusive of and led by frontline and vulnerable communities and workers to plan, implement, and administer the Green New Deal mobilization at the local level;
(G)ensuring that the Green New Deal mobilization creates high-quality union jobs that pay prevailing wages, hires local workers, offers training and advancement opportunities, and guarantees wage and benefit parity for workers affected by the transition;
(H)guaranteeing a job with a family-sustaining wage, adequate family and medical leave, paid vacations, and retirement security to all people of the United States;
(I)strengthening and protecting the right of all workers to organize, unionize, and collectively bargain free of coercion, intimidation, and harassment;
(J)strengthening and enforcing labor, workplace health and safety, antidiscrimination, and wage and hour standards across all employers, industries, and sectors;
(K)enacting and enforcing trade rules, procurement standards, and border adjustments with strong labor and environmental protections—
(i)to stop the transfer of jobs and pollution overseas; and
(ii)to grow domestic manufacturing in the United States;
(L)ensuring that public lands, waters, and oceans are protected and that eminent domain is not abused;
(M)obtaining the free, prior, and informed consent of indigenous peoples for all decisions that affect indigenous peoples and their traditional territories, honoring all treaties and agreements with indigenous peoples, and protecting and enforcing the sovereignty and land rights of indigenous peoples;
(N)ensuring a commercial environment where every businessperson is free from unfair competition and domination by domestic or international monopolies; and
(O)providing all people of the United States with—
(i)high-quality health care;
(ii)affordable, safe, and adequate housing;
(iii)economic security; and
(iv)clean water, clean air, healthy and affordable food, and access to nature.", author_id: legislator01.id})

post02 = Post.create!({title: "Young Fishermens Development Act", status: "passed-senate", body: "116th CONGRESS

2d Session

S. 496

AN ACT

To preserve United States fishing heritage through a national program dedicated to training and assisting the next generation of commercial fishermen, and for other purposes.

1.Short title
This Act may be cited as the Young Fishermen's Development Act.

2.Definitions
In this Act:

(1)Sea grant institution
The term Sea Grant Institution means a sea grant college or sea grant institute, as those terms are defined in section 203 of the National Sea Grant College Program Act (33 U.S.C. 1122).

(2)Tribal organization
The term Tribal organization has the meaning given the term tribal organization in section 4 of the Indian Self-Determination and Education Assistance Act (25 U.S.C. 5304).

(3)Young fisherman
The term young fisherman means an individual who—

(A)desires to participate in the commercial fisheries of the United States, including the Great Lakes fisheries;
(B)has worked as a captain, crew member, or deckhand on a commercial fishing vessel for not more than 10 years of cumulative service; or
(C)is a beginning commercial fisherman.
3.Establishment of program
The Secretary of Commerce, acting through the National Sea Grant Office, shall establish a program to provide training, education, outreach, and technical assistance initiatives for young fishermen, to be known as the Young Fishermen’s Development Grant Program (referred to in this section as the Program).

4.Grants
(a)In general
In carrying out the Program, the Secretary shall make competitive grants to support new and established local and regional training, education, outreach, and technical assistance initiatives for young fishermen, including programs, workshops, and services relating to—

(1)seamanship, navigation, electronics, and safety;
(2)vessel and engine care, maintenance, and repair;
(3)innovative conservation fishing gear engineering and technology;
(4)sustainable fishing practices;
(5)entrepreneurship and good business practices;
(6)direct marketing, supply chain, and traceability;
(7)financial and risk management, including vessel, permit, and quota purchasing;
(8)State and Federal legal requirements for specific fisheries, including reporting, monitoring, licenses, and regulations;
(9)State and Federal fisheries policy and management;
(10)mentoring, apprenticeships, or internships; and
(11)any other activities, opportunities, or programs, as the Secretary determines appropriate.
(b)Eligibility
(1)Applicants
To be eligible to receive a grant under the Program, a recipient shall be a collaborative State, Tribal, local, or regionally based network or partnership of public or private entities, which may include—

(A)a Sea Grant Institution;
(B)a Federal or State agency or a Tribal organization;
(C)a community-based nongovernmental organization;
(D)fishermen’s cooperatives or associations;
(E)an institution of higher education (including an institution awarding an associate’s degree), or a foundation maintained by an institution of higher education; or
(F)any other appropriate entity, as the Secretary determines appropriate.
(2)Participants
All young fishermen seeking to participate in the commercial fisheries of the United States and the Great Lakes are eligible to participate in the activities funded through grants provided for in this section, except that participants in such activities shall be selected by each grant recipient.

(c)Maximum term and amount of grant
(1)In general
A grant under this section shall—

(A)have a term of no more than 3 fiscal years; and
(B)be in an amount that is not more than $200,000 for each fiscal year.
(2)Consecutive grants
An eligible recipient may receive consecutive grants under this section.

(d)Matching requirement
To be eligible to receive a grant under this section, a recipient shall provide a match in the form of cash or in-kind contributions from the recipient in the amount equal to or greater than 25 percent of the funds provided by the grant.

(e)Regional balance
In making grants under this section, the Secretary shall, to the maximum extent practicable, ensure geographic diversity.

(f)Cooperation and evaluation criteria
In carrying out this section and in developing criteria for evaluating grant applications, the Secretary shall consult, to the maximum extent practicable, with—

(1)Sea Grant Institutions and extension agents of such institutions;
(2)community-based nongovernmental fishing organizations;
(3)Federal and State agencies, including Regional Fishery Management Councils established under the Magnuson-Stevens Fishery Conservation and Management Act (16 U.S.C. 1851 et seq.);
(4)institutions of higher education with fisheries expertise and programs; and
(5)partners, as the Secretary determines.
(g)Prohibition
A grant under this section may not be used to purchase any fishing license, permit, quota, or other harvesting right.

5.Funding
The Secretary of Commerce shall carry out this Act using amounts made available to the Department of Commerce for fiscal years 2022 through 2026.", author_id: legislator02.id})