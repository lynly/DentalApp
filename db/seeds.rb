Doctor.destroy_all

d1 = Doctor.create({
  first_name: "Roger",
  last_name: "O’Sullivan",
  email: "rosullivan@email.com",
  gender: "Male",
  qualification: "BDSc. (Syd. Uni.)",
  specialty: "General Dentistry",
  password: "chicken",
  password_confirmation: "chicken"
})

d2 = Doctor.create({
  first_name: "Lindsay",
  last_name: "Williams",
  email: "lwilliams@email.com",
  gender: "Female",
  qualification: "BDSc. (Hons)",
  specialty: "Cosmetic Dentistry, Aesthetic Services",
  password: "chicken",
  password_confirmation: "chicken"
})

d3 = Doctor.create({
  first_name: "Oliver",
  last_name: "Harley",
  email: "oharley@email.com",
  gender: "Male",
  qualification: "B.BioMol.Sc. (Hons I) BDSc. (Hons I) FICOI",
  specialty: "General Dentistry, Cosmetic Dentistry, Implant Dentistry",
  password: "chicken",
  password_confirmation: "chicken"
})

puts "Doctor Count: #{ Doctor.all.count }"


Service.destroy_all
s1 = Service.create(name: "Comprehensive Examination", description: "We encourages all of our patients to practice preventive dentistry and regular examinations are vital for optimal dental health. Your comprehensive examination is a carefully structured process that will help you gain control of and understand how to maintain a high level of oral health.")
s2 = Service.create(name: "Restorations", description: "Dental restorations are used to repair teeth that have become damaged through trauma, infection or decay. A restoration will replace any missing tooth structure and can repair a tooth so it is sufficiently strong enough for normal biting and chewing. It is always important that we restore any damaged teeth as soon as possible as the tooth is at far greater risk of further damage and infection. A restoration will protect the existing tooth structure, sealing out bacteria and prolonging the natural life of the tooth.")
s3 = Service.create(name: "Amalgam Free Dentistry", description: "Amalgam restorations are hard-wearing and cost-effective but are far less common since newer and stronger tooth coloured filling materials have been developed.
Nowadays dentists can restore large areas of decay, using the very latest tooth coloured composite resins that are able to withstand substantial chewing forces. In areas where this isn’t possible, we can use porcelain restorations to provide additional strength and structure to teeth that are more badly damaged.")
s4 = Service.create(name: "Root Canal Treatment", description: "A tooth that is badly damaged and which is not restored is more likely to become infected. Bacteria will easily be able to penetrate the tooth, eventually reaching the pulp. This is located right in the centre of the tooth and contains blood vessels and nerves and other connective tissues. Once a tooth is fully developed, the pulp is not necessary but it can be very painful if it becomes infected. If you develop toothache or pain when biting down on a tooth, we suggest booking an appointment with We as soon as you are able as you may need root canal treatment to remove the infection and to restore the tooth. Treatment is more successful when promptly carried out.")
s5 = Service.create(name: "Wisdom Teeth Management", description: "Wisdom teeth or the third molars are the very last to erupt, emerging anywhere from the late teens to late twenties. By this stage all the adult teeth are firmly established, leaving little room for latecomers. As a result, wisdom teeth can become impacted, where they will try to come up underneath existing teeth, or they may emerge sideways through the gums. Sometimes they will manage to partially erupt and are more at risk of decay and infection.")
s6 = Service.create(name: "X-Ray", description: "We prefer to take a full set of digital dental x-rays whenever we see someone for the first time. This is because we like to carry out a very thorough initial assessment that will give us with a clear overview of your dental health. The information provided by these x-rays is invaluable in helping us formulate the most appropriate treatment plan. We will only take dental x-rays when necessary and most healthy adults with reasonable dental health will only require routine x-rays every two years or if a problem arises.")
s7 = Service.create(name: "Smile Planning", description: "Smile planning is an essential process that begins with discovering your desires and aims. Most people have a good idea as to how they would like to improve their teeth, but are unsure which treatments might help, or exactly the type of results that can be reasonably achieved. Smile planning will guide you through this process and enables us to design teeth that will complement and enhance your appearance.")
s8 = Service.create(name: "Crowns & Bridges", description: "Crowns are sometimes called caps and cover up a tooth that has been badly damaged and which has lost too much of its original structure to be restored with composite resin restorations or with an inlay or onlay. A crown protects the tooth, sealing it completely so bacteria cannot penetrate and damage the remaining structure.
Bridges are used to bridge the gaps left by missing teeth. A bridge is supported by crowns on the adjacent teeth, usually on one tooth either side of the space. The crowns are attached to the replacement teeth which are called pontics. This results in a very life-like and strong restoration. Bridges are a very effective way to replace missing teeth, particularly when the adjacent teeth will benefit from being crowned and may already have some damage or large restorations.")
s9 = Service.create(name: "Teeth Whitening", description: "Here we use high quality professional whitening systems that can safely and effectively whiten your teeth in our office in a single visit. Alternately, we can supply home whitening kits utilising custom-fitted mouth trays or simple pre-fabricated carriers. These whitening systems are effective, safe, and straightforward to use at home. We can discuss the most suitable option for your needs during an initial consultation.")
s10 = Service.create(name: "Veneers", description: "Veneers are extremely thin shells that cover up the front surfaces of teeth, improving their overall appearance. The veneers are bonded in place and should look very natural. They may be made from porcelain or composite resin.
Veneers are a very good way to correct or cover up a number of different imperfections that include stained teeth that will not respond to tooth whitening, chipped or worn teeth, teeth that are too small or a less than ideal shape, teeth that are slightly out of alignment and where orthodontics isn’t really required, to perfect a smile once orthodontics is complete as well closing up or minimising spaces in between teeth")
s11 = Service.create(name: "Inlays & Onlays", description: "Smaller areas of decay and damage can generally be repaired with composite resin restorations. Although the very latest composite resins are strong, hard-wearing and beautiful, they are not quite resilient enough for repairing larger cavities in back teeth. For these occasions we will suggest using an inlay or onlay. These restorations are made from porcelain so they are stronger than composite resin and more able to withstand the forces created during chewing.
An inlay or onlay will restore both strength and structure to the damaged tooth, repairing it almost invisibly. Porcelain restorations are more hard-wearing than composite resin restorations and will not stain. They are made on-site in our dental laboratory, using an impression of the prepared tooth. With proper care, your new inlay or onlay should last for many years before it eventually needs to be replaced.")
s12 = Service.create(name: "Single / Multiple Implants", description: "It is important to replace even a single lost tooth and a dental implant may often be the best type of restoration. This is because a dental implant post prevents bone loss in the jaw and will ensure existing teeth cannot drift out of place. Unlike a bridge, there is no need to adjust the adjacent teeth to be crowned as the new tooth is entirely supported by the implant. A single implant tooth can look amazing, particularly when using the latest all-ceramic crowns so it is very difficult for anyone to see you have suffered tooth loss. This is because the emergent profile of the implant tooth, or the way it emerges from your gums will closely replicate a natural tooth.")
s13 = Service.create(name: "Implant Supported Bridge", description: "We can use implant supported bridges to replace multiple teeth that are located in the same area of the mouth or to replace full upper or lower dentures. It is not necessary to replace every single tooth with a single implant as the implants are strong and secure enough to be able to support multiple teeth. The exact number of implants required can vary according to the position of the teeth being replaced and the number that are missing. Implant supported bridges to replace upper dentures usually require a greater number of implants to provide adequate support.
An implant supported bridge can be a good option for cases where the natural teeth are either missing completely or are not sufficiently strong enough to support a bridge. Using dental implants in this way can enable you to gain the advantages offered by this treatment rather than relying on less desirable choices such as partial or full dentures. With an implant supported bridge, you will be able to eat and talk normally and can enjoy a far greater range of foods than can comfortably be eaten with conventional dentures.")
s14 = Service.create(name: "Restorative Dental Implants", description: "Restorative dentistry includes a number of different modalities to repair or replace natural teeth, one of which is to use implant supported prosthetic teeth. Our aim is to identify factors that may have led to disease, destroying natural dentition so we may ensure your treatment plan halts any further progression.
This will enable us to successfully rehabilitate your mouth using materials that are strong and biocompatible while still producing excellent aesthetic results. These materials have to be able to withstand the harsh environment in your mouth and must cope with changing temperatures and pH levels and extremes of functional forces. We prefer to use ceramics or gold wherever possible but sometimes adhesive composite resins and glass ionomer materials can be effective.")
s15 = Service.create(name: "Prosthodontics", description: "Prosthodontics is a branch of dentistry that focuses on designing, fabricating and fitting artificial tooth replacements or dentures. We can supply high quality dentures that are correctly designed to fit comfortably and securely and which can be retained with dental implants.
Our on-site dental laboratory is responsible for hand crafting these appliances and our dentists and dental technicians collaborate closely to ensure each denture is optimally designed to closely replicate natural teeth. Our dentures provide the proper support for the cheeks and lips and ensure the correct dimensions are maintained between the upper and lower jaws to give an aesthetically pleasing appearance. Extensive care is taken to ensure each denture is fully functional. If you choose to have an implant retained denture then it should be much easier to eat and talk, eliminating any concerns about dentures moving or falling out.")
s16 = Service.create(name: "Fixed Appliances (Braces)", description: "If you have a misaligned bite or crooked teeth then you may benefit from wearing fixed appliances. There are a variety of treatments that can be used to straighten teeth and to correct orthodontic problems, including fixed and removable appliances and retainers. To find out if orthodontic treatment will help, you will need to have a full clinical exam so our dentists may assess your teeth and jaws. We may take photos and impressions of your teeth, as well as dental x-rays. Our analysis of all the information gathered will enable us to recommend the most appropriate plan.")
s17 = Service.create(name: "Early Treatment & Facial Growth Guidance", description: "Here, we prefer that our younger patients receive an early orthodontic evaluation. The earlier we are able to identify a developing problem, the greater the range of options for helping to redirect growth. Oral habits such as thumb or finger sucking or mouth breathing can frequently cause a malocclusion (bad bite) or overcrowding of teeth. Being able to identify the causes of a functional imbalance often allows us to take a non-invasive approach to treatment such as posture and habit retraining and these methods can be very effective.
Often postural problems will be due to less obvious reasons as dietary intolerances can result in nasal congestion and cranial strains may be the product of birth trauma. There are numerous reasons that can result in a change to head and neck posture, impacting the action of facial muscles and jaws. The adverse effects of muscle imbalance include a deficient growth of the upper jaw or maxilla and inappropriate posture and function of the lower jaw or mandible.")
s18 = Service.create(name: "Adult Orthodontics", description: "Adult teeth and jaws are fully developed, so we do take quite a different approach compared to childhood orthodontics to account for less flexibility and tissue response. However, the use of modern orthodontic technologies can enable us to significantly improve an adult’s bite relationship and tooth alignment. Orthodontic options for adults tend to be less visible and can often deliver a good outcome quite quickly. ")
s19 = Service.create(name: "Aesthetic Appliances", description: "Aesthetic orthodontic appliances include the use of virtually invisible braces systems. Invisalign and Clear Correct utilise a series of clear removable aligners to gently reposition teeth. These aligners can be useful for cases where only simple tooth movement is required, often providing a quick solution for cosmetically oriented problems. Our fixed braces can use extremely discreet ceramic brackets connected to thin wires. There may be the option for these wires to be tooth coloured. We suggest using fixed braces for slightly more complicated cases of tooth alignment as they offer a high degree of precision. We sometimes recommends aesthetic orthodontic appliances for children, but most often for adults.")
s20 = Service.create(name: "TMD & Bruxism", description: "TMD is short for temporomandibular joint disorder, a painful condition that can affect your jaw joints (temporomandibular joints) and the muscles associated with these joints. It is often linked to bruxism, where people will clench or grind their teeth and this places considerable stress not only on the teeth, but also on the jaw joints. As a result, teeth can become worn down and chipped or will even fracture completely; gums can recede and the jaw joints are more likely to become inflamed and sore. You may find it painful to open your mouth or your jaw might pop or click as you move it.")
s21 = Service.create(name: "Snoring & Sleep Apnoea", description: "Everyone will snore occasionally and the sound is usually continuous and regular. Sleep apnoea is quite different as people will snore loudly, but breathing is frequently interrupted as air is prevented from entering the lungs. Breathing can cease for several seconds until the brain prompts the body to restart it, usually with a loud snort or gasp. This is called obstructive sleep apnoea (OSA) and is due to a lack of muscle tone in the upper airway, allowing it to collapse inwards, preventing normal continuous breathing.")
s22 = Service.create(name: "Sedation & Sleep Dentistry", description: "Modern dental techniques enable us to provide any procedure or dental service without discomfort or pain. We know many people have concerns over receiving dental treatment which is why we take time to understand your preferences and past experiences before any examination is provided.
Using this information, we will be able to formulate a treatment plan tailored to your unique circumstances and which you will control. Our approach is designed to minimise any anxieties, particularly for anyone who may have experienced difficulties in receiving dental treatment in the past.")
s23 = Service.create(name: "Facial Injectables", description: "Dentists have the highest undergraduate training in facial anatomy than most medical practitioners and their ancillary staff. We administer local anaesthetics daily so are very skilled at injecting effectively and as painlessly as possible.
We are skilled at analysing the proportions of the face, know how the individual muscles in the face work and understand where the lips and gums should be positioned, so we will ensure your treatment looks natural and achieve your desired results. No one has to know you have had any facial injectables done because you just came to see the dentist.")
s24 = Service.create(name: "Skin Microneedling", description: "Skin Microneedling works by stimulating your own body’s collagen formation. We use a dermastamp with fine needle penetration to enhance blood supply to the area and regenerate the skin below the dermis and also infuse collagen and growth factors from the platelet rich plasma deeper into the skin to generate more cell renewal. The depth of needle penetration can be adjusted depending on the skin rejuvenation levels required and can be targeted to the face and neck.")

d1.services << s1 << s2 << s3 << s4 << s5 << s6
d2.services << s7 << s8 << s9 << s10 << s11 << s23 << s24
d3.services << s1 << s2 << s3 << s4 << s5 << s6 << s7 << s8 << s9 << s10 << s11 << s12 << s13 << s14 << s15

s1.doctors << d1 << d3
s2.doctors << d1 << d3
s3.doctors << d1 << d3
s4.doctors << d1 << d3
s5.doctors << d1 << d3
s6.doctors << d1 << d3
s7.doctors << d2 << d3
s8.doctors << d2 << d3
s9.doctors << d2 << d3
s10.doctors << d2 << d3
s11.doctors << d2 << d3
s12.doctors << d3
s13.doctors << d3
s14.doctors << d3
s15.doctors << d3
s23.doctors << d2
s24.doctors << d2


puts "Service Count: #{ Service.all.count }"

s5.doctors.uniq.each do |doctor|
  puts "Doctor Name: #{ doctor.first_name} #{ doctor.last_name }"
end

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
