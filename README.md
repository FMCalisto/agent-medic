# Introduction

Consider an agent to play Battlefield 1942.

This agent controls a character class doctor.

When the agent is hit loses 10% of energy and initially starts with full power 
(100%) and with 30 bullets in his gun.

Whenever the agent depletes their bullets perform the action 
(RELOAD) to recapture the 30 bullets (assume that the agent has the ammunition 
infinite).

If an enemy appears in front of the agent, it performs the action (SHOOT), if not 
one appears and if the agent is injured (less than 100% power) it uses its ability to 
cure by performing the action (HEAL).

This action allows the agent to recover 5% of lost energy. 

If none of the above situations happens the agent will simply patrolling their area, 
performing the action (patrol).
