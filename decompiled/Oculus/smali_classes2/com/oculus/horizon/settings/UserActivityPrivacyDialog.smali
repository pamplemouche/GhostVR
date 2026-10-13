.class public Lcom/oculus/horizon/settings/UserActivityPrivacyDialog;
.super Ljava/lang/Object;
.source "UserActivityPrivacyDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 16
    new-instance v0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oculus/horizon/R$string;->settings_user_activity_privacy_your_activity:I

    .line 18
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setTitle(I)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_user_activity_privacy_explanation_intro:I

    .line 21
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    sget v4, Lcom/oculus/horizon/R$string;->settings_user_activity_privacy_explanation_item_1:I

    .line 22
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/oculus/horizon/R$string;->settings_user_activity_privacy_explanation_item_2:I

    .line 23
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget v4, Lcom/oculus/horizon/R$string;->settings_user_activity_privacy_explanation_item_3:I

    .line 24
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 20
    invoke-static {v1, v2}, Lcom/oculus/horizon/util/TextSpanUtils;->makeList(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->build()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v1

    .line 29
    const v0, 0x102000b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 31
    return-object v1
.end method
