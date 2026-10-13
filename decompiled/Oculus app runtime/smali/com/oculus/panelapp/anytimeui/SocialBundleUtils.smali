.class public final Lcom/oculus/panelapp/anytimeui/SocialBundleUtils;
.super Ljava/lang/Object;
.source "SocialBundleUtils.java"


# static fields
.field private static final FACEBOOK_DATA_POLICY_LINK:Ljava/lang/String; = "https://www.facebook.com/policy"

.field private static final FACEBOOK_DATA_POLICY_PLACEHOLDER:Ljava/lang/String; = "[[Facebook Data Policy Link]]"

.field private static final FAQ_LINK:Ljava/lang/String; = "https://support.oculus.com/424208161507635/"

.field private static final FAQ_PLACEHOLDER:Ljava/lang/String; = "[[FAQ Link]]"

.field private static final OCULUS_PRIVACY_POLICY_LINK:Ljava/lang/String; = "https://ghostvr.pamplemouche.com/www/legal/privacy-policy"

.field private static final OCULUS_PRIVACY_POLICY_PLACEHOLDER:Ljava/lang/String; = "[[Oculus Privacy Policy Link]]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static linkifySpan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableStringBuilder;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 63
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    .line 68
    invoke-virtual {p3, v0, p1, p0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 69
    new-instance p1, Lcom/oculus/panelapp/anytimeui/SocialBundleUtils$1;

    invoke-direct {p1, p4, p2}, Lcom/oculus/panelapp/anytimeui/SocialBundleUtils$1;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    const/16 p4, 0x21

    .line 76
    invoke-virtual {p3, p1, v0, p2, p4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 81
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v0

    .line 81
    invoke-virtual {p3, p1, v0, p0, p4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p3
.end method

.method public static setupLinks(Landroid/widget/TextView;Landroid/content/res/Resources;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)Landroid/text/SpannableString;
    .locals 3

    .line 29
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 31
    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 32
    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->social_fb_link_upsell_footer_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 33
    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->oculus_privacy_policy:I

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[[Oculus Privacy Policy Link]]"

    const-string v2, "https://ghostvr.pamplemouche.com/www/legal/privacy-policy"

    .line 34
    invoke-static {v0, v1, v2, p0, p2}, Lcom/oculus/panelapp/anytimeui/SocialBundleUtils;->linkifySpan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableStringBuilder;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    .line 40
    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->facebook_data_policy:I

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[[Facebook Data Policy Link]]"

    const-string v2, "https://www.facebook.com/policy"

    .line 41
    invoke-static {v0, v1, v2, p0, p2}, Lcom/oculus/panelapp/anytimeui/SocialBundleUtils;->linkifySpan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableStringBuilder;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    .line 47
    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->linked_accounts_faq:I

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[[FAQ Link]]"

    const-string v1, "https://support.oculus.com/424208161507635/"

    .line 48
    invoke-static {p1, v0, v1, p0, p2}, Lcom/oculus/panelapp/anytimeui/SocialBundleUtils;->linkifySpan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableStringBuilder;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    .line 54
    invoke-static {p0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0
.end method
