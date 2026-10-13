.class public final enum Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;
.super Ljava/lang/Enum;
.source "OVRNuxPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

.field public static final enum COMPLETED:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

.field public static final enum FAILED:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

.field public static final enum UNSET:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    const-string v1, "UNSET"

    invoke-direct {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->UNSET:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    .line 79
    new-instance v0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v3}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->COMPLETED:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    .line 80
    new-instance v0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->FAILED:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    sget-object v1, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->UNSET:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->COMPLETED:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->FAILED:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->$VALUES:[Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const-class v0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    return-object v0
.end method

.method public static values()[Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->$VALUES:[Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    invoke-virtual {v0}, [Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    return-object v0
.end method
