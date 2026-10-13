.class public Lcom/oculus/browser/OculusApplicationID;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final GEAR_GO_APP_ID:Ljava/lang/String; = "1257988667656584"

.field public static final QUEST_APP_ID:Ljava/lang/String; = "1916519981771802"

.field public static final TAG:Ljava/lang/String; = "OculusApplicationID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/oculus/vrapi/SystemProps;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Quest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1916519981771802"

    return-object v0

    :cond_0
    const-string v0, "1257988667656584"

    return-object v0
.end method
