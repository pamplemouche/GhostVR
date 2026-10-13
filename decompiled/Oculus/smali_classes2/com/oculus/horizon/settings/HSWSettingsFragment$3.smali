.class Lcom/oculus/horizon/settings/HSWSettingsFragment$3;
.super Landroid/text/style/ClickableSpan;
.source "HSWSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/HSWSettingsFragment;->createSpannable(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/HSWSettingsFragment;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 136
    const-string v0, "https://www.oculus.com/legal/health-and-safety-warnings/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 138
    iget-object v0, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 144
    const v0, -0xffff01

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 145
    return-void
.end method
