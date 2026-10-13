.class public final enum Lcom/oculus/job/OculusJobHelper$Result;
.super Ljava/lang/Enum;
.source "OculusJobHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/job/OculusJobHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/job/OculusJobHelper$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/job/OculusJobHelper$Result;

.field public static final enum FAILED:Lcom/oculus/job/OculusJobHelper$Result;

.field public static final enum SCHEDULED:Lcom/oculus/job/OculusJobHelper$Result;

.field public static final enum SKIPPED:Lcom/oculus/job/OculusJobHelper$Result;

.field public static final enum SKIPPED_DUPLICATE:Lcom/oculus/job/OculusJobHelper$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/oculus/job/OculusJobHelper$Result;

    const-string v1, "SKIPPED"

    invoke-direct {v0, v1, v2}, Lcom/oculus/job/OculusJobHelper$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/job/OculusJobHelper$Result;->SKIPPED:Lcom/oculus/job/OculusJobHelper$Result;

    .line 23
    new-instance v0, Lcom/oculus/job/OculusJobHelper$Result;

    const-string v1, "SKIPPED_DUPLICATE"

    invoke-direct {v0, v1, v3}, Lcom/oculus/job/OculusJobHelper$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/job/OculusJobHelper$Result;->SKIPPED_DUPLICATE:Lcom/oculus/job/OculusJobHelper$Result;

    .line 24
    new-instance v0, Lcom/oculus/job/OculusJobHelper$Result;

    const-string v1, "SCHEDULED"

    invoke-direct {v0, v1, v4}, Lcom/oculus/job/OculusJobHelper$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/job/OculusJobHelper$Result;->SCHEDULED:Lcom/oculus/job/OculusJobHelper$Result;

    .line 25
    new-instance v0, Lcom/oculus/job/OculusJobHelper$Result;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/oculus/job/OculusJobHelper$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/job/OculusJobHelper$Result;->FAILED:Lcom/oculus/job/OculusJobHelper$Result;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/job/OculusJobHelper$Result;

    sget-object v1, Lcom/oculus/job/OculusJobHelper$Result;->SKIPPED:Lcom/oculus/job/OculusJobHelper$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/job/OculusJobHelper$Result;->SKIPPED_DUPLICATE:Lcom/oculus/job/OculusJobHelper$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/job/OculusJobHelper$Result;->SCHEDULED:Lcom/oculus/job/OculusJobHelper$Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/job/OculusJobHelper$Result;->FAILED:Lcom/oculus/job/OculusJobHelper$Result;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/job/OculusJobHelper$Result;->$VALUES:[Lcom/oculus/job/OculusJobHelper$Result;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/job/OculusJobHelper$Result;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/oculus/job/OculusJobHelper$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/job/OculusJobHelper$Result;

    return-object v0
.end method

.method public static values()[Lcom/oculus/job/OculusJobHelper$Result;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/oculus/job/OculusJobHelper$Result;->$VALUES:[Lcom/oculus/job/OculusJobHelper$Result;

    invoke-virtual {v0}, [Lcom/oculus/job/OculusJobHelper$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/job/OculusJobHelper$Result;

    return-object v0
.end method
