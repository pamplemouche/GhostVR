.class Lcom/oculus/home/HomeActivity$SystemActivitiesFail$Extras;
.super Ljava/lang/Object;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/home/HomeActivity$SystemActivitiesFail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Extras"
.end annotation


# instance fields
.field public final Message:Ljava/lang/String;

.field public final Reason:Ljava/lang/String;

.field public final RequiresUpdate:Ljava/lang/String;

.field public final Tag:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "Missing Shell packages"

    iput-object v0, p0, Lcom/oculus/home/HomeActivity$SystemActivitiesFail$Extras;->Reason:Ljava/lang/String;

    .line 63
    const-string v0, "Home"

    iput-object v0, p0, Lcom/oculus/home/HomeActivity$SystemActivitiesFail$Extras;->Tag:Ljava/lang/String;

    .line 64
    const-string v0, "false"

    iput-object v0, p0, Lcom/oculus/home/HomeActivity$SystemActivitiesFail$Extras;->RequiresUpdate:Ljava/lang/String;

    .line 67
    const-string v0, "Oculus Update Required\n\nTo update, take your mobile device out of the headset and open the Oculus app.\n\nYou\'ll need Internet access to continue."

    iput-object v0, p0, Lcom/oculus/home/HomeActivity$SystemActivitiesFail$Extras;->Message:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/home/HomeActivity$1;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/oculus/home/HomeActivity$SystemActivitiesFail$Extras;-><init>()V

    return-void
.end method
