.class public Lcom/oculus/modules/ToasterModuleImpl;
.super Lcom/oculus/modules/codegen/ToasterModule;
.source "ToasterModuleImpl.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/oculus/modules/codegen/ToasterModule;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/oculus/modules/ToasterModuleImpl;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method protected createToastImpl(DLcom/oculus/modules/codegen/ToasterModule$Bread;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "toastID"    # D
    .param p3, "bread"    # Lcom/oculus/modules/codegen/ToasterModule$Bread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lcom/oculus/modules/codegen/ToasterModule$Bread;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p4, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    :try_start_0
    iget-object v1, p0, Lcom/oculus/modules/ToasterModuleImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/oculus/toast/ToastAPI;->createToast(Landroid/content/Context;Lcom/oculus/modules/codegen/ToasterModule$Bread;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    const/4 v1, 0x0

    invoke-interface {p4, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 33
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-interface {p4, v0}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected dismissBadgeImpl(DLcom/oculus/modules/codegen/Resolver;)V
    .locals 3
    .param p1, "badgeID"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/oculus/modules/ToasterModuleImpl;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    .line 65
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 66
    .local v0, "notifManager":Landroid/app/NotificationManager;
    const-string v1, "system"

    double-to-int v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 67
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method protected showBadgeImpl(DLcom/oculus/modules/codegen/ToasterModule$BadgeInfo;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 7
    .param p1, "badgeID"    # D
    .param p3, "badgeInfo"    # Lcom/oculus/modules/codegen/ToasterModule$BadgeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lcom/oculus/modules/codegen/ToasterModule$BadgeInfo;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p4, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v1, "extras":Landroid/os/Bundle;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/oculus/modules/ToasterModuleImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, -0x1

    .line 43
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 45
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v3, "oculus_ignore_missing_title"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    const-string v3, "vrshell_aui_badge_route"

    iget-object v4, p3, Lcom/oculus/modules/codegen/ToasterModule$BadgeInfo;->badgeRoute:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v3, "vrshell_aui_badge_auto_dismiss"

    iget-boolean v4, p3, Lcom/oculus/modules/codegen/ToasterModule$BadgeInfo;->autoDismiss:Z

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    const-string v3, "vrshell_aui_badge_badge_parent"

    iget-boolean v4, p3, Lcom/oculus/modules/codegen/ToasterModule$BadgeInfo;->badgeParent:Z

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    sget v3, Lcom/oculus/toastermodule/R$drawable;->ic_notif_home:I

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 51
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 53
    iget-object v3, p0, Lcom/oculus/modules/ToasterModuleImpl;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    .line 54
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 55
    .local v2, "notifManager":Landroid/app/NotificationManager;
    const-string v3, "system"

    double-to-int v4, p1

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 56
    const/4 v3, 0x0

    invoke-interface {p4, v3}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 57
    return-void
.end method
