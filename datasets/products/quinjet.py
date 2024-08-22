import pandas as pd
import uuid

# Define the list of product names (parts of the Quinjet)
product_names = [
    "Fuselage Frame", "Composite Armor Plating", "Cockpit Canopy", "Control Yoke", "Pilot's Seat", "Co-Pilot's Seat",
    "Navigation Console", "Heads-Up Display (HUD)", "Flight Control Computer", "Avionics Suite", "Communication System",
    "Ejection Seats", "Cockpit Instrument Panel", "Throttle Controls", "Foot Pedals", "Landing Gear System",
    "VTOL Thrusters", "Main Engines", "Afterburners", "Fuel Tanks", "Fuel Pump System", "Exhaust Nozzles",
    "Intake Ducts", "Turbofan Blades", "Radar System", "Stealth Technology Coating", "Invisibility Cloaking Device",
    "Infrared Sensors", "Thermal Imaging Cameras", "Missile Launch System", "Gatling Gun Turret", "Ammunition Storage",
    "Flare Dispensers", "Chaff Dispensers", "Hydraulic Systems", "Emergency Parachutes", "Life Support System",
    "Fire Suppression System", "Structural Integrity Field", "Anti-Gravity Stabilizers", "Navigation Lights",
    "Tactical Display Screens", "Cargo Hold", "Cargo Ramps", "Boarding Ladders", "Troop Seating", "Weapon Racks",
    "Medical Kit Storage", "Repulsor Lifts", "Energy Shield Generators", "Data Link System", "Black Box Recorder",
    "Gyroscopic Stabilizers", "Artificial Horizon", "Altimeter", "Speedometer", "Windshield Wipers",
    "Emergency Beacons", "Wing Flaps", "Ailerons", "Elevators", "Rudders", "Winglets", "Vertical Stabilizers",
    "Horizontal Stabilizers", "Structural Reinforcement Braces", "Internal Wiring Harness", "Power Distribution Unit",
    "Battery Backup Systems", "Auxiliary Power Units", "Fuel Management System", "De-icing Equipment",
    "Heating, Ventilation, and Air Conditioning (HVAC) System", "Canopy Defogger", "Self-Sealing Fuel Tanks",
    "Magnetic Landing Gear Locks", "Stealth Mode Actuators", "Landing Gear Retraction System",
    "Retractable Boarding Stairs", "Interior Lighting System", "Exterior Spotlights", "Flight Data Acquisition Unit",
    "Engine Thrust Vector Controls", "Heat Dissipation Panels", "Armored Bulkheads", "Reinforced Windows",
    "Optical Targeting System", "Satellite Communication Array", "Digital Flight Manual",
    "Flight Path Projection System", "Collision Avoidance Sensors", "Ground Proximity Warning System",
    "Pilot Helmet with Augmented Reality", "Intercom System", "Pilot Oxygen Supply", "Cockpit Voice Recorder",
    "Advanced Encryption Modules", "Stealth Exhaust Manifolds", "Navigation Autopilot",
    "Electromagnetic Pulse (EMP) Countermeasures"
]

# Generate UUIDs and other identifiers
product_uuids = [str(uuid.uuid4()) for _ in range(len(product_names))]
manufacturer_id = str(uuid.uuid4())
manufacturer_name = "Stark Industries"
brand_id = str(uuid.uuid4())
brand_name = "Avengers Tech"
product_models = [f"Model-{i+1}" for i in range(len(product_names))]
subcategory_ids = [str(i+1).zfill(3) for i in range(len(product_names))]

# Create the DataFrame
quinjet_parts_df = pd.DataFrame({
    "product_uuid": product_uuids,
    "product_name": product_names,
    "manufacturer_id": [manufacturer_id] * len(product_names),
    "manufacturer_name": [manufacturer_name] * len(product_names),
    "brand_id": [brand_id] * len(product_names),
    "brand_name": [brand_name] * len(product_names),
    "product_model": product_models,
    "subcategory_id": subcategory_ids
})

# Save to CSV
quinjet_parts_df.to_csv("/mnt/data/quinjet_parts.csv", index=False)

quinjet_parts_df.head()
