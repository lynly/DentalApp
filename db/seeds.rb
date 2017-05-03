Doctor.destroy_all

d1 = Doctor.create({
  first_name: "Roger",
  last_name: "O’Sullivan",
  gender: "Male",
  qualification: "BDSc. (Syd. Uni.)",
  specialty: "General Dentistry"
})

d2 = Doctor.create({
  first_name: "Lindsay",
  last_name: "Williams",
  gender: "Female",
  qualification: "BDSc. (Hons)",
  specialty: "Cosmetic Dentistry, Aesthetic Services"
})

d3 = Doctor.create({
  first_name: "Oliver",
  last_name: "Harley",
  gender: "Male",
  qualification: "B.BioMol.Sc. (Hons I) BDSc. (Hons I) FICOI",
  specialty: "General Dentistry, Cosmetic Dentistry, Implant Dentistry"
})

puts "Doctor Count: #{ Doctor.all.count }"


Service.destroy_all
s1 = Service.create(name: "Comprehensive Examination")
s2 = Service.create(name: "Restorations")
s3 = Service.create(name: "Amalgam Free Dentistry")
s4 = Service.create(name: "Root Canal Treatment")
s5 = Service.create(name: "Wisdom Teeth Management")
s6 = Service.create(name: "X-Ray")
s7 = Service.create(name: "Smile Planning")
s8 = Service.create(name: "Crowns & Bridges")
s9 = Service.create(name: "Teeth Whitening")
s10 = Service.create(name: "Veneers")
s11 = Service.create(name: "Inlays & Onlays")
s12 = Service.create(name: "Single / Multiple Implants")
s13 = Service.create(name: "Implant Supported Bridge")
s14 = Service.create(name: "Restorative Dental Implants")
s15 = Service.create(name: "Prosthodontics")
s16 = Service.create(name: "Fixed Appliances (Braces)")
s17 = Service.create(name: "Early Treatment & Facial Growth Guidance")
s18 = Service.create(name: "Adult Orthodontics")
s19 = Service.create(name: "Aesthetic Appliances")
s20 = Service.create(name: "TMD & Bruxism")
s21 = Service.create(name: "Snoring & Sleep Apnoea")
s22 = Service.create(name: "Sedation & Sleep Dentistry")
s23 = Service.create(name: "Facial Injectables")
s24 = Service.create(name: "Skin Microneedling")


d1.services << s1 << s2 << s3 << s4 << s5 << s6
d2.services << s7 << s8 << s9 << s10 << s11 << s23 << s24
d3.services << s1 << s2 << s3 << s4 << s5 << s6 << s7 << s8 << s9 << s10 << s11 << s12 << s13 << s14 << s15

puts "Service Count: #{ Service.all.count }"

Category.destroy_all

c1 = Category.create(name: "General Dentistry")
c2 = Category.create(name: "Cosmetic Dentistry")
c3 = Category.create(name: "Implant Dentistry")
c4 = Category.create(name: "Orthodontics")
c5 = Category.create(name: "Advanced Services")
c6 = Category.create(name: "Aesthetic Services")

c1.services << s1 << s2 << s3 << s4 << s5 << s6
c2.services << s7 << s8 << s9 << s10 << s11
c3.services << s12 << s13 << s14 << s15
c4.services << s16 << s17 << s18 << s19
c5.services << s20 << s21 << s22
c6.services << s23 << s24



puts "Category Count: #{ Category.all.count }"
# puts "Category: #{d1.services(:category_id)}"
