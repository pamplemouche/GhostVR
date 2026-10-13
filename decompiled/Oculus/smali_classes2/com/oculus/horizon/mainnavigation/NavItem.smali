.class public final enum Lcom/oculus/horizon/mainnavigation/NavItem;
.super Ljava/lang/Enum;
.source "NavItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/mainnavigation/NavItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/mainnavigation/NavItem;

.field public static final enum CONCEPTS:Lcom/oculus/horizon/mainnavigation/NavItem;

.field public static final enum EVENTS:Lcom/oculus/horizon/mainnavigation/NavItem;

.field public static final enum FEED:Lcom/oculus/horizon/mainnavigation/NavItem;

.field public static final enum FRIENDS:Lcom/oculus/horizon/mainnavigation/NavItem;

.field public static final enum HELP:Lcom/oculus/horizon/mainnavigation/NavItem;

.field public static final enum LIBRARY:Lcom/oculus/horizon/mainnavigation/NavItem;

.field public static final enum MORE:Lcom/oculus/horizon/mainnavigation/NavItem;

.field public static final enum NOTIFICATIONS:Lcom/oculus/horizon/mainnavigation/NavItem;

.field public static final enum PROFILE:Lcom/oculus/horizon/mainnavigation/NavItem;

.field public static final enum SETTINGS:Lcom/oculus/horizon/mainnavigation/NavItem;

.field public static final enum STORE:Lcom/oculus/horizon/mainnavigation/NavItem;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/oculus/horizon/mainnavigation/NavItem;

    const-string v1, "PROFILE"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/mainnavigation/NavItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/mainnavigation/NavItem;->PROFILE:Lcom/oculus/horizon/mainnavigation/NavItem;

    .line 10
    new-instance v0, Lcom/oculus/horizon/mainnavigation/NavItem;

    const-string v1, "FEED"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/mainnavigation/NavItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/mainnavigation/NavItem;->FEED:Lcom/oculus/horizon/mainnavigation/NavItem;

    .line 11
    new-instance v0, Lcom/oculus/horizon/mainnavigation/NavItem;

    const-string v1, "STORE"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/mainnavigation/NavItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/mainnavigation/NavItem;->STORE:Lcom/oculus/horizon/mainnavigation/NavItem;

    .line 12
    new-instance v0, Lcom/oculus/horizon/mainnavigation/NavItem;

    const-string v1, "CONCEPTS"

    invoke-direct {v0, v1, v6}, Lcom/oculus/horizon/mainnavigation/NavItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/mainnavigation/NavItem;->CONCEPTS:Lcom/oculus/horizon/mainnavigation/NavItem;

    .line 13
    new-instance v0, Lcom/oculus/horizon/mainnavigation/NavItem;

    const-string v1, "LIBRARY"

    invoke-direct {v0, v1, v7}, Lcom/oculus/horizon/mainnavigation/NavItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/mainnavigation/NavItem;->LIBRARY:Lcom/oculus/horizon/mainnavigation/NavItem;

    .line 14
    new-instance v0, Lcom/oculus/horizon/mainnavigation/NavItem;

    const-string v1, "NOTIFICATIONS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/mainnavigation/NavItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/mainnavigation/NavItem;->NOTIFICATIONS:Lcom/oculus/horizon/mainnavigation/NavItem;

    .line 15
    new-instance v0, Lcom/oculus/horizon/mainnavigation/NavItem;

    const-string v1, "FRIENDS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/mainnavigation/NavItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/mainnavigation/NavItem;->FRIENDS:Lcom/oculus/horizon/mainnavigation/NavItem;

    .line 16
    new-instance v0, Lcom/oculus/horizon/mainnavigation/NavItem;

    const-string v1, "EVENTS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/mainnavigation/NavItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/mainnavigation/NavItem;->EVENTS:Lcom/oculus/horizon/mainnavigation/NavItem;

    .line 17
    new-instance v0, Lcom/oculus/horizon/mainnavigation/NavItem;

    const-string v1, "SETTINGS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/mainnavigation/NavItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/mainnavigation/NavItem;->SETTINGS:Lcom/oculus/horizon/mainnavigation/NavItem;

    .line 18
    new-instance v0, Lcom/oculus/horizon/mainnavigation/NavItem;

    const-string v1, "HELP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/mainnavigation/NavItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/mainnavigation/NavItem;->HELP:Lcom/oculus/horizon/mainnavigation/NavItem;

    .line 19
    new-instance v0, Lcom/oculus/horizon/mainnavigation/NavItem;

    const-string v1, "MORE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/mainnavigation/NavItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/mainnavigation/NavItem;->MORE:Lcom/oculus/horizon/mainnavigation/NavItem;

    .line 8
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/oculus/horizon/mainnavigation/NavItem;

    sget-object v1, Lcom/oculus/horizon/mainnavigation/NavItem;->PROFILE:Lcom/oculus/horizon/mainnavigation/NavItem;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/mainnavigation/NavItem;->FEED:Lcom/oculus/horizon/mainnavigation/NavItem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/mainnavigation/NavItem;->STORE:Lcom/oculus/horizon/mainnavigation/NavItem;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/mainnavigation/NavItem;->CONCEPTS:Lcom/oculus/horizon/mainnavigation/NavItem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/horizon/mainnavigation/NavItem;->LIBRARY:Lcom/oculus/horizon/mainnavigation/NavItem;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/horizon/mainnavigation/NavItem;->NOTIFICATIONS:Lcom/oculus/horizon/mainnavigation/NavItem;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/horizon/mainnavigation/NavItem;->FRIENDS:Lcom/oculus/horizon/mainnavigation/NavItem;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/horizon/mainnavigation/NavItem;->EVENTS:Lcom/oculus/horizon/mainnavigation/NavItem;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/horizon/mainnavigation/NavItem;->SETTINGS:Lcom/oculus/horizon/mainnavigation/NavItem;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oculus/horizon/mainnavigation/NavItem;->HELP:Lcom/oculus/horizon/mainnavigation/NavItem;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oculus/horizon/mainnavigation/NavItem;->MORE:Lcom/oculus/horizon/mainnavigation/NavItem;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/horizon/mainnavigation/NavItem;->$VALUES:[Lcom/oculus/horizon/mainnavigation/NavItem;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/mainnavigation/NavItem;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/oculus/horizon/mainnavigation/NavItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/mainnavigation/NavItem;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/mainnavigation/NavItem;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/oculus/horizon/mainnavigation/NavItem;->$VALUES:[Lcom/oculus/horizon/mainnavigation/NavItem;

    invoke-virtual {v0}, [Lcom/oculus/horizon/mainnavigation/NavItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/mainnavigation/NavItem;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
