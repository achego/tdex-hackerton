import { NextFunction, Request, Response } from "express";
import { $Enums, Prisma } from "@prisma/client";
import { ParsedQs } from "qs";
import catchError from "../../core/utils/error_handler.js";
import CustomRequest from "../data/models/custom_request.js";
import CustomError from "../data/models/custom_error.js";
import { StatusCode } from "../../core/utils/enums.js";
import userRepository from "../repos/user_repo.js";
import customResponse from "../data/models/custom_response.js";
import transactionRepository from "../repos/transaction_repository.js";
import balancerepository from "../repos/balance_repo.js";
import { logger } from "../../global_exports.js";
import { env, prisma } from "../../core/globals.js";
import authHelpers from "../helpers/auth_helpers.js";

interface Donations {
  title: string;
  image_url: string;
  content_sub: string;
  content: string;
}

const donations: Donations[] = [
  {
    title: "Flood Relief for Nigerian States",
    image_url: "https://www.globalgiving.org/pfil/66687/pict_large.jpg",
    content_sub:
      "The devastating floods in Nigeria have displaced thousands. Families are in urgent need of food, water, and shelter. Join us in restoring hope to affected communities.",
    content: `
The devastating floods that have swept through multiple Nigerian states have left a trail of destruction. Thousands of families have lost their homes, and access to basic necessities like food and clean water is critically limited. The affected regions are in dire need of support.

Your contribution can:

- Provide food and water to displaced families struggling to survive.
- Supply temporary shelter to those who have lost their homes.
- Fund emergency medical care for flood victims.
- Assist in rebuilding destroyed infrastructure and homes.

Every donation helps bring relief to those affected, offering them a chance to rebuild their lives. Together, we can make a difference in these vulnerable communities. Join us in this life-saving mission.
    `,
  },
  {
    title: "Hunger Crisis in Northern Nigeria",
    image_url:
      "https://cdn.punchng.com/wp-content/uploads/2024/12/06175547/0b94071f-1066-4281-a089-86a8f39b4c0e.jpeg",
    content_sub:
      "Northern Nigeria faces an escalating hunger crisis. Millions, including children, are at risk of malnutrition. Immediate support is crucial to save lives.",
    content: `
Northern Nigeria is grappling with a catastrophic hunger crisis. Years of conflict, displacement, and environmental challenges have left millions without adequate food. The most vulnerable—children and pregnant women—are succumbing to severe malnutrition, with many lives at stake.

Your generous support can:

- Deliver emergency food supplies to communities in urgent need.
- Establish nutrition centers for malnourished children.
- Provide farming tools and seeds to help rebuild food production.
- Fund clean water initiatives to improve overall health and reduce disease.

By acting now, you can help alleviate this dire situation and bring hope to families teetering on the brink of survival. Together, we can combat hunger and rebuild communities.
    `,
  },
  {
    title: "Health Care Support in Southern Nigeria",
    image_url:
      "https://guardian.ng/wp-content/uploads/2024/10/Nigerian-hospitals-1424x802.jpg",
    content_sub:
      "Healthcare gaps in Southern Nigeria leave countless lives at risk. Many lack access to basic medical services. Join us in bringing healthcare to the underserved.",
    content: `
Access to quality healthcare remains a pressing issue in Southern Nigeria. With limited facilities and resources, millions are left without proper medical attention, leading to preventable deaths and suffering.

Your contribution can bring lasting change:

- Provide medical supplies, vaccines, and equipment to underserved hospitals.
- Organize free medical outreach programs for rural and remote communities.
- Support maternal and child health programs to reduce mortality rates.
- Fund initiatives aimed at combating common diseases like malaria and typhoid.

Your support can save lives, restore health, and ensure a brighter future for many in need. Together, we can transform healthcare and uplift communities across Southern Nigeria.
    `,
  },
  {
    title: "Mosquito Outbreak Relief Fund",
    image_url:
      "https://www.gavi.org/sites/default/files/vaccineswork/2024/Header/wef-blood-sample-nurse-patient-arm-nhiep-unsplash.jpg",
    content_sub:
      "A mosquito outbreak has led to surging malaria cases. Immediate action is needed to prevent further loss of life. Join us in the fight against this deadly disease.",
    content: `
A mosquito outbreak in Nigeria has caused a sharp rise in malaria cases, especially among children under five. This preventable disease is claiming lives and overwhelming health systems in affected areas.

Your support can:

- Distribute insecticide-treated mosquito nets to protect vulnerable families.
- Fund access to antimalarial drugs and life-saving treatment.
- Train health workers to handle malaria outbreaks more effectively.
- Support educational campaigns to promote preventive measures.

Your donation can play a crucial role in saving lives and reducing the spread of malaria. Stand with us to protect communities from this deadly disease.
    `,
  },
  {
    title: "Clean Water Initiative for Rural Communities",
    image_url:
      "https://sdgs.un.org/sites/default/files/2023-03/IMG_3528_0.jpeg",
    content_sub:
      "Many rural communities in Nigeria lack access to clean water. This causes widespread disease and suffering. Your help can bring clean water and hope to these communities.",
    content: `
Clean water is a basic human need, yet many rural communities in Nigeria lack access to it. Contaminated water sources are causing preventable diseases like cholera, dysentery, and typhoid, endangering the lives of children and adults alike.

Your donation can help:

- Construct wells and boreholes to provide clean drinking water.
- Install water filtration systems for safe and reliable water access.
- Fund hygiene education programs to prevent waterborne diseases.
- Support long-term projects for sustainable water management.

Together, we can break the cycle of disease and suffering, ensuring every family has access to the clean water they deserve. Make a difference today.
    `,
  },
];

const getAllDonations = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    const userParam = req.user;
    if (!userParam || !userParam.id) {
      throw new CustomError(
        "An error occured with this account",
        StatusCode.unauthorized
      );
    }
    return customResponse(res, { data: donations });
  }
);

const donationController = {
  getAllDonations,
};

export default donationController;
