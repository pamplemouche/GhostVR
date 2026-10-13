.class public final enum Lcom/oculus/horizon/fragmentresolver/HorizonFragment;
.super Ljava/lang/Enum;
.source "HorizonFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/fragmentresolver/HorizonFragment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

.field public static final enum ACHIEVEMENTS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

.field public static final enum ADVANCED_SETTINGS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

.field public static final enum APPLICATION_PDP:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

.field public static final enum BUNDLE_PDP:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

.field public static final enum EVENTS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

.field public static final enum EVENT_DETAILS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

.field public static final enum FB_CONNECT:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

.field public static final enum FEED:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

.field public static final enum FRIENDS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

.field public static final enum INDIVIDUAL_EVENTS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

.field public static final enum IN_APP_PDP:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

.field public static final enum LIBRARY:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

.field public static final enum PARTY_CALL_SETTINGS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

.field public static final enum PRIVACY_SETTINGS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

.field public static final enum PROFILE:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

.field public static final enum REVIEW:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

.field public static final enum REVIEWS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

.field public static final enum STORE:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

.field public static final enum STORE_SECTION:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    const-string v1, "PROFILE"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->PROFILE:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    .line 7
    new-instance v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    const-string v1, "PRIVACY_SETTINGS"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->PRIVACY_SETTINGS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    .line 8
    new-instance v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    const-string v1, "PARTY_CALL_SETTINGS"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->PARTY_CALL_SETTINGS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    .line 9
    new-instance v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    const-string v1, "EVENTS"

    invoke-direct {v0, v1, v6}, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->EVENTS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    .line 10
    new-instance v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    const-string v1, "EVENT_DETAILS"

    invoke-direct {v0, v1, v7}, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->EVENT_DETAILS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    .line 11
    new-instance v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    const-string v1, "INDIVIDUAL_EVENTS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->INDIVIDUAL_EVENTS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    .line 12
    new-instance v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    const-string v1, "FRIENDS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->FRIENDS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    .line 13
    new-instance v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    const-string v1, "FB_CONNECT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->FB_CONNECT:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    .line 14
    new-instance v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    const-string v1, "FEED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->FEED:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    .line 15
    new-instance v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    const-string v1, "LIBRARY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->LIBRARY:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    .line 16
    new-instance v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    const-string v1, "REVIEWS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->REVIEWS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    .line 17
    new-instance v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    const-string v1, "REVIEW"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->REVIEW:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    .line 18
    new-instance v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    const-string v1, "ADVANCED_SETTINGS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->ADVANCED_SETTINGS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    .line 19
    new-instance v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    const-string v1, "STORE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->STORE:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    .line 20
    new-instance v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    const-string v1, "STORE_SECTION"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->STORE_SECTION:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    .line 21
    new-instance v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    const-string v1, "APPLICATION_PDP"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->APPLICATION_PDP:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    .line 22
    new-instance v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    const-string v1, "BUNDLE_PDP"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->BUNDLE_PDP:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    .line 23
    new-instance v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    const-string v1, "IN_APP_PDP"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->IN_APP_PDP:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    .line 24
    new-instance v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    const-string v1, "ACHIEVEMENTS"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->ACHIEVEMENTS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    .line 5
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    sget-object v1, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->PROFILE:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->PRIVACY_SETTINGS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->PARTY_CALL_SETTINGS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->EVENTS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->EVENT_DETAILS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->INDIVIDUAL_EVENTS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->FRIENDS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->FB_CONNECT:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->FEED:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->LIBRARY:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->REVIEWS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->REVIEW:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->ADVANCED_SETTINGS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->STORE:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->STORE_SECTION:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->APPLICATION_PDP:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->BUNDLE_PDP:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->IN_APP_PDP:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->ACHIEVEMENTS:Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->$VALUES:[Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/fragmentresolver/HorizonFragment;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/fragmentresolver/HorizonFragment;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->$VALUES:[Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    invoke-virtual {v0}, [Lcom/oculus/horizon/fragmentresolver/HorizonFragment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/fragmentresolver/HorizonFragment;

    return-object v0
.end method
