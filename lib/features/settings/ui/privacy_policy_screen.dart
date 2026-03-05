import 'package:flutter/material.dart';
import '/core/widgets/spacing.dart';
import '/core/helpers/extensions/context_extensions.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.localize.privacyPolicy)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.localize.privacyPolicy,
              style: context.theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const VerticalSpace(8),
            Text(
              context.localize.lastUpdatedMessage,
              style: context.theme.textTheme.bodyMedium?.copyWith(
                color: Colors.grey,
              ),
            ),
            const VerticalSpace(24),
            _buildSectionTitle(context, context.localize.introductionLabel),
            _buildParagraph(context, context.localize.introductionMessage),
            const VerticalSpace(24),
            _buildSectionTitle(
              context,
              context.localize.informationCollectionAndUseLabel,
            ),
            _buildParagraph(
              context,
              context.localize.informationCollectionAndUseParagraph,
            ),
            const VerticalSpace(8),
            _buildBulletedList(context, [
              context.localize.informationCollectionAndUseBullet1,
              context.localize.informationCollectionAndUseBullet2,
              context.localize.informationCollectionAndUseBullet3,
              context.localize.informationCollectionAndUseBullet4,
            ]),
            const VerticalSpace(8),
            _buildParagraph(
              context,
              context.localize.everyThingIsLocallyMessage,
            ),
            const VerticalSpace(24),
            _buildSectionTitle(context, context.localize.permissionsLable),
            _buildParagraph(
              context,
              context.localize.permissionsAppNameMessage,
            ),
            const VerticalSpace(8),
            _buildBulletedList(context, [
              context.localize.permissionsAppMessage1,
              context.localize.permissionsAppMessage2,
            ]),
            const VerticalSpace(8),
            _buildParagraph(context, context.localize.permissionsAppMessage3),
            const VerticalSpace(24),
            _buildSectionTitle(context, context.localize.dataStorageLable),
            _buildBulletedList(context, [
              context.localize.dataStorageMessage1,
              context.localize.dataStorageMessage2,
              context.localize.dataStorageMessage3,
            ]),
            const VerticalSpace(8),
            _buildParagraph(context, context.localize.dataStorageMessage4),
            const VerticalSpace(24),
            _buildSectionTitle(
              context,
              context.localize.thirdPartyServicesLabel,
            ),
            _buildParagraph(
              context,
              context.localize.thirdPartyServicesMessage,
            ),
            const VerticalSpace(8),
            _buildBulletedList(context, [
              context.localize.thirdPartyServicesBullet1,
              context.localize.thirdPartyServicesBullet2,
              context.localize.thirdPartyServicesBullet3,
              context.localize.thirdPartyServicesBullet4,
            ]),
            const VerticalSpace(24),
            _buildSectionTitle(context, context.localize.childrensPrivacy),
            _buildParagraph(context, context.localize.childrensPrivacyMessage),
            const VerticalSpace(24),
            _buildSectionTitle(
              context,
              context.localize.changesToThisPrivacyPolicyLabel,
            ),
            _buildParagraph(
              context,
              context.localize.changesToThisPrivacyPolicyMessage,
            ),
            const VerticalSpace(24),
            _buildSectionTitle(context, context.localize.contactUs),
            _buildParagraph(context, context.localize.contactUsMessage),
            const VerticalSpace(40),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        title,
        style: context.theme.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: context.theme.colorScheme.primary,
        ),
      ),
    );
  }

  Widget _buildParagraph(BuildContext context, String text) {
    return Text(
      text,
      style: context.theme.textTheme.bodyLarge?.copyWith(height: 1.5),
    );
  }

  Widget _buildBulletedList(BuildContext context, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((item) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0, left: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "• ",
                style: context.theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
              Expanded(
                child: Text(
                  item,
                  style: context.theme.textTheme.bodyLarge?.copyWith(
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
