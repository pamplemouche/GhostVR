.class public final enum Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;
.super Ljava/lang/Enum;
.source "LivestreamingModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/home/module/LivestreamingModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LiveStreamingLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;

.field public static final enum GROUP:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;

.field public static final enum PAGE:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;

.field public static final enum TIMELINE:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;


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

    .line 32
    new-instance v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;

    const-string v1, "TIMELINE"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;->TIMELINE:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;

    .line 33
    new-instance v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;

    const-string v1, "GROUP"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;->GROUP:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;

    .line 34
    new-instance v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;

    const-string v1, "PAGE"

    invoke-direct {v0, v1, v3, v5}, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;->PAGE:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;

    .line 31
    new-array v0, v5, [Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;

    sget-object v1, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;->TIMELINE:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;->GROUP:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;->PAGE:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;->$VALUES:[Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;->mVal:I

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;

    return-object v0
.end method

.method public static values()[Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;->$VALUES:[Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;

    invoke-virtual {v0}, [Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;

    return-object v0
.end method
