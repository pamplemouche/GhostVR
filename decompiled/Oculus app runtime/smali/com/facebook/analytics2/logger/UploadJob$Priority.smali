.class public final enum Lcom/facebook/analytics2/logger/UploadJob$Priority;
.super Ljava/lang/Enum;
.source "UploadJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/UploadJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/analytics2/logger/UploadJob$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/analytics2/logger/UploadJob$Priority;

.field public static final enum HIGH:Lcom/facebook/analytics2/logger/UploadJob$Priority;

.field public static final enum NORMAL:Lcom/facebook/analytics2/logger/UploadJob$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lcom/facebook/analytics2/logger/UploadJob$Priority;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/facebook/analytics2/logger/UploadJob$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/analytics2/logger/UploadJob$Priority;->NORMAL:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    .line 15
    new-instance v0, Lcom/facebook/analytics2/logger/UploadJob$Priority;

    const/4 v2, 0x1

    const-string v3, "HIGH"

    invoke-direct {v0, v3, v2}, Lcom/facebook/analytics2/logger/UploadJob$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/analytics2/logger/UploadJob$Priority;->HIGH:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [Lcom/facebook/analytics2/logger/UploadJob$Priority;

    sget-object v3, Lcom/facebook/analytics2/logger/UploadJob$Priority;->NORMAL:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    aput-object v3, v0, v1

    sget-object v1, Lcom/facebook/analytics2/logger/UploadJob$Priority;->HIGH:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/analytics2/logger/UploadJob$Priority;->$VALUES:[Lcom/facebook/analytics2/logger/UploadJob$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/analytics2/logger/UploadJob$Priority;
    .locals 1

    .line 13
    const-class v0, Lcom/facebook/analytics2/logger/UploadJob$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/analytics2/logger/UploadJob$Priority;

    return-object p0
.end method

.method public static values()[Lcom/facebook/analytics2/logger/UploadJob$Priority;
    .locals 1

    .line 13
    sget-object v0, Lcom/facebook/analytics2/logger/UploadJob$Priority;->$VALUES:[Lcom/facebook/analytics2/logger/UploadJob$Priority;

    invoke-virtual {v0}, [Lcom/facebook/analytics2/logger/UploadJob$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/analytics2/logger/UploadJob$Priority;

    return-object v0
.end method
