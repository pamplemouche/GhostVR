.class public final enum Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;
.super Ljava/lang/Enum;
.source "LivestreamingModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/home/module/LivestreamingModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LiveStreamingAudience"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;

.field public static final enum FRIENDS:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;

.field public static final enum ONLY_ME:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;

.field public static final enum PUBLIC:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;


# instance fields
.field public final mVal:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 44
    new-instance v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;->PUBLIC:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;

    .line 45
    new-instance v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;

    const-string v1, "FRIENDS"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;->FRIENDS:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;

    .line 46
    new-instance v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;

    const-string v1, "ONLY_ME"

    invoke-direct {v0, v1, v3, v5}, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;->ONLY_ME:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;

    .line 43
    new-array v0, v5, [Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;

    sget-object v1, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;->PUBLIC:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;->FRIENDS:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;->ONLY_ME:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;->$VALUES:[Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;->mVal:I

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;

    return-object v0
.end method

.method public static values()[Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;->$VALUES:[Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;

    invoke-virtual {v0}, [Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;

    return-object v0
.end method
