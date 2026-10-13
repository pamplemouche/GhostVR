.class public Lcom/oculus/toast/ToastAPI;
.super Ljava/lang/Object;
.source "ToastAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/toast/ToastAPI$Icon;,
        Lcom/oculus/toast/ToastAPI$Duration;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mToastID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/oculus/toast/ToastAPI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/toast/ToastAPI;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/oculus/toast/ToastAPI;->mToastID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createToast(Landroid/content/Context;Lcom/oculus/modules/codegen/ToasterModule$Bread;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bread"    # Lcom/oculus/modules/codegen/ToasterModule$Bread;

    .prologue
    .line 108
    :try_start_0
    iget-object v3, p1, Lcom/oculus/modules/codegen/ToasterModule$Bread;->duration:Ljava/lang/String;

    invoke-static {v3}, Lcom/oculus/toast/ToastAPI$Duration;->valueOf(Ljava/lang/String;)Lcom/oculus/toast/ToastAPI$Duration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    .local v0, "duration":Lcom/oculus/toast/ToastAPI$Duration;
    :goto_0
    :try_start_1
    iget-object v3, p1, Lcom/oculus/modules/codegen/ToasterModule$Bread;->icon:Ljava/lang/String;

    invoke-static {v3}, Lcom/oculus/toast/ToastAPI$Icon;->fromString(Ljava/lang/String;)Lcom/oculus/toast/ToastAPI$Icon;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 124
    .local v2, "icon":Lcom/oculus/toast/ToastAPI$Icon;
    :goto_1
    iget-object v3, p1, Lcom/oculus/modules/codegen/ToasterModule$Bread;->title:Ljava/lang/String;

    iget-object v4, p1, Lcom/oculus/modules/codegen/ToasterModule$Bread;->message:Ljava/lang/String;

    invoke-static {p0, v0, v2, v3, v4}, Lcom/oculus/toast/ToastAPI;->createToast(Landroid/content/Context;Lcom/oculus/toast/ToastAPI$Duration;Lcom/oculus/toast/ToastAPI$Icon;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void

    .line 109
    .end local v0    # "duration":Lcom/oculus/toast/ToastAPI$Duration;
    .end local v2    # "icon":Lcom/oculus/toast/ToastAPI$Icon;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/oculus/toast/ToastAPI;->TAG:Ljava/lang/String;

    const-string v4, "Invalid toast duration. Setting duration = DEFAULT."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v0, Lcom/oculus/toast/ToastAPI$Duration;->DEFAULT:Lcom/oculus/toast/ToastAPI$Duration;

    .restart local v0    # "duration":Lcom/oculus/toast/ToastAPI$Duration;
    goto :goto_0

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 120
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v3, Lcom/oculus/toast/ToastAPI;->TAG:Ljava/lang/String;

    const-string v4, "Invalid toast icon. Setting icon = HOME."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v2, Lcom/oculus/toast/ToastAPI$Icon;->HOME:Lcom/oculus/toast/ToastAPI$Icon;

    .restart local v2    # "icon":Lcom/oculus/toast/ToastAPI$Icon;
    goto :goto_1
.end method

.method public static createToast(Landroid/content/Context;Lcom/oculus/toast/ToastAPI$Duration;Lcom/oculus/toast/ToastAPI$Icon;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # Lcom/oculus/toast/ToastAPI$Duration;
    .param p2, "icon"    # Lcom/oculus/toast/ToastAPI$Icon;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 71
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v1, "extras":Landroid/os/Bundle;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 75
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 76
    invoke-virtual {v0, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 81
    :goto_0
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    invoke-virtual {v0, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 85
    :cond_0
    invoke-virtual {p2}, Lcom/oculus/toast/ToastAPI$Icon;->getResourceId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 87
    if-eqz p1, :cond_1

    .line 88
    const-string v3, "aui_notif_duration"

    invoke-virtual {p1}, Lcom/oculus/toast/ToastAPI$Duration;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_1
    sget-object v3, Lcom/oculus/toast/ToastAPI;->TAG:Ljava/lang/String;

    const-string v4, "Toasting with duration: %s, icon: %s, title: %s, message: %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    aput-object p4, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 98
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 100
    .local v2, "notifManager":Landroid/app/NotificationManager;
    const-string v3, "system"

    sget v4, Lcom/oculus/toast/ToastAPI;->mToastID:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/oculus/toast/ToastAPI;->mToastID:I

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 101
    return-void

    .line 78
    .end local v2    # "notifManager":Landroid/app/NotificationManager;
    :cond_2
    const-string v3, "oculus_ignore_missing_title"

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method
