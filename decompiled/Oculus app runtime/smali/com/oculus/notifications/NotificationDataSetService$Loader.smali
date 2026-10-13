.class Lcom/oculus/notifications/NotificationDataSetService$Loader;
.super Ljava/lang/Object;
.source "NotificationDataSetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/notifications/NotificationDataSetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# static fields
.field static sInstance:Lcom/oculus/notifications/NotificationDataSetService;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;
    .locals 0

    .line 213
    invoke-static {p0}, Lcom/oculus/notifications/NotificationDataSetService$Loader;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object p0

    return-object p0
.end method

.method private static final getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;
    .locals 2

    .line 217
    sget-object v0, Lcom/oculus/notifications/NotificationDataSetService$Loader;->sInstance:Lcom/oculus/notifications/NotificationDataSetService;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/oculus/notifications/NotificationDataSetService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/notifications/NotificationDataSetService;-><init>(Landroid/content/Context;Lcom/oculus/notifications/NotificationDataSetService$1;)V

    sput-object v0, Lcom/oculus/notifications/NotificationDataSetService$Loader;->sInstance:Lcom/oculus/notifications/NotificationDataSetService;

    .line 220
    :cond_0
    sget-object p0, Lcom/oculus/notifications/NotificationDataSetService$Loader;->sInstance:Lcom/oculus/notifications/NotificationDataSetService;

    return-object p0
.end method
