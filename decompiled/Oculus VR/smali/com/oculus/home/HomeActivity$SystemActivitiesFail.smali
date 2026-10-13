.class Lcom/oculus/home/HomeActivity$SystemActivitiesFail;
.super Ljava/lang/Object;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/home/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemActivitiesFail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/home/HomeActivity$SystemActivitiesFail$Extras;
    }
.end annotation


# instance fields
.field public final Command:Ljava/lang/String;

.field public final OVRVersion:Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardcodedIPAddressUse"
        }
    .end annotation
.end field

.field public final extraData:Lcom/oculus/home/HomeActivity$SystemActivitiesFail$Extras;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "failMenu"

    iput-object v0, p0, Lcom/oculus/home/HomeActivity$SystemActivitiesFail;->Command:Ljava/lang/String;

    .line 56
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/oculus/home/HomeActivity$SystemActivitiesFail;->OVRVersion:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/oculus/home/HomeActivity$SystemActivitiesFail$Extras;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oculus/home/HomeActivity$SystemActivitiesFail$Extras;-><init>(Lcom/oculus/home/HomeActivity$1;)V

    iput-object v0, p0, Lcom/oculus/home/HomeActivity$SystemActivitiesFail;->extraData:Lcom/oculus/home/HomeActivity$SystemActivitiesFail$Extras;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/home/HomeActivity$1;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/oculus/home/HomeActivity$SystemActivitiesFail;-><init>()V

    return-void
.end method
