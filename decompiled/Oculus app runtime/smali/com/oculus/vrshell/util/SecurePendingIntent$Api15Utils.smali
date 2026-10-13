.class Lcom/oculus/vrshell/util/SecurePendingIntent$Api15Utils;
.super Ljava/lang/Object;
.source "SecurePendingIntent.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/util/SecurePendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api15Utils"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSelector(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 183
    invoke-virtual {p0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static setSelector(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    .line 179
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    return-void
.end method
