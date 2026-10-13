.class final enum Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;
.super Ljava/lang/Enum;
.source "HSWVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/hsw/HSWVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SECTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

.field public static final enum CHILDREN:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

.field public static final enum COMFORT:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

.field public static final enum CONFIRM:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

.field public static final enum INTRO:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

.field public static final enum SURROUNDING:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

.field public static final enum WARNING:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    const-string v1, "INTRO"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->INTRO:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    .line 53
    new-instance v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->WARNING:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    .line 54
    new-instance v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    const-string v1, "SURROUNDING"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->SURROUNDING:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    .line 55
    new-instance v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    const-string v1, "CHILDREN"

    invoke-direct {v0, v1, v6}, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->CHILDREN:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    .line 56
    new-instance v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    const-string v1, "COMFORT"

    invoke-direct {v0, v1, v7}, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->COMFORT:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    .line 57
    new-instance v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    const-string v1, "CONFIRM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->CONFIRM:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    sget-object v1, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->INTRO:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->WARNING:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->SURROUNDING:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->CHILDREN:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->COMFORT:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->CONFIRM:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->$VALUES:[Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->$VALUES:[Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    invoke-virtual {v0}, [Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    return-object v0
.end method
