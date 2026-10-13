.class Lcom/oculus/secure/pendingintent/SecurePendingIntent$Api15Utils;
.super Ljava/lang/Object;
.source "SecurePendingIntent.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/secure/pendingintent/SecurePendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api15Utils"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSelector(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static setSelector(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "selector"    # Landroid/content/Intent;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 179
    return-void
.end method
