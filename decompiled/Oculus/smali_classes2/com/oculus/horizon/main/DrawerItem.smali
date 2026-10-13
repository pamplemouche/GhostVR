.class public final enum Lcom/oculus/horizon/main/DrawerItem;
.super Ljava/lang/Enum;
.source "DrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/main/DrawerItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/main/DrawerItem;

.field public static final enum CONCEPTS:Lcom/oculus/horizon/main/DrawerItem;

.field public static final enum FEED:Lcom/oculus/horizon/main/DrawerItem;

.field public static final enum FRIENDS:Lcom/oculus/horizon/main/DrawerItem;

.field public static final enum HELP:Lcom/oculus/horizon/main/DrawerItem;

.field public static final enum LIBRARY:Lcom/oculus/horizon/main/DrawerItem;

.field public static final enum NOTIFICATIONS:Lcom/oculus/horizon/main/DrawerItem;

.field public static final enum PROFILE:Lcom/oculus/horizon/main/DrawerItem;

.field public static final enum SETTINGS:Lcom/oculus/horizon/main/DrawerItem;

.field public static final enum STORE:Lcom/oculus/horizon/main/DrawerItem;


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
    new-instance v0, Lcom/oculus/horizon/main/DrawerItem;

    const-string v1, "PROFILE"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/main/DrawerItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/main/DrawerItem;->PROFILE:Lcom/oculus/horizon/main/DrawerItem;

    .line 10
    new-instance v0, Lcom/oculus/horizon/main/DrawerItem;

    const-string v1, "FEED"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/main/DrawerItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/main/DrawerItem;->FEED:Lcom/oculus/horizon/main/DrawerItem;

    .line 11
    new-instance v0, Lcom/oculus/horizon/main/DrawerItem;

    const-string v1, "STORE"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/main/DrawerItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/main/DrawerItem;->STORE:Lcom/oculus/horizon/main/DrawerItem;

    .line 12
    new-instance v0, Lcom/oculus/horizon/main/DrawerItem;

    const-string v1, "CONCEPTS"

    invoke-direct {v0, v1, v6}, Lcom/oculus/horizon/main/DrawerItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/main/DrawerItem;->CONCEPTS:Lcom/oculus/horizon/main/DrawerItem;

    .line 13
    new-instance v0, Lcom/oculus/horizon/main/DrawerItem;

    const-string v1, "LIBRARY"

    invoke-direct {v0, v1, v7}, Lcom/oculus/horizon/main/DrawerItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/main/DrawerItem;->LIBRARY:Lcom/oculus/horizon/main/DrawerItem;

    .line 14
    new-instance v0, Lcom/oculus/horizon/main/DrawerItem;

    const-string v1, "FRIENDS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/main/DrawerItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/main/DrawerItem;->FRIENDS:Lcom/oculus/horizon/main/DrawerItem;

    .line 15
    new-instance v0, Lcom/oculus/horizon/main/DrawerItem;

    const-string v1, "SETTINGS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/main/DrawerItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/main/DrawerItem;->SETTINGS:Lcom/oculus/horizon/main/DrawerItem;

    .line 16
    new-instance v0, Lcom/oculus/horizon/main/DrawerItem;

    const-string v1, "NOTIFICATIONS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/main/DrawerItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/main/DrawerItem;->NOTIFICATIONS:Lcom/oculus/horizon/main/DrawerItem;

    .line 17
    new-instance v0, Lcom/oculus/horizon/main/DrawerItem;

    const-string v1, "HELP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/main/DrawerItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/main/DrawerItem;->HELP:Lcom/oculus/horizon/main/DrawerItem;

    .line 8
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/oculus/horizon/main/DrawerItem;

    sget-object v1, Lcom/oculus/horizon/main/DrawerItem;->PROFILE:Lcom/oculus/horizon/main/DrawerItem;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/main/DrawerItem;->FEED:Lcom/oculus/horizon/main/DrawerItem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/main/DrawerItem;->STORE:Lcom/oculus/horizon/main/DrawerItem;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/main/DrawerItem;->CONCEPTS:Lcom/oculus/horizon/main/DrawerItem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/horizon/main/DrawerItem;->LIBRARY:Lcom/oculus/horizon/main/DrawerItem;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/horizon/main/DrawerItem;->FRIENDS:Lcom/oculus/horizon/main/DrawerItem;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/horizon/main/DrawerItem;->SETTINGS:Lcom/oculus/horizon/main/DrawerItem;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/horizon/main/DrawerItem;->NOTIFICATIONS:Lcom/oculus/horizon/main/DrawerItem;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/horizon/main/DrawerItem;->HELP:Lcom/oculus/horizon/main/DrawerItem;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/horizon/main/DrawerItem;->$VALUES:[Lcom/oculus/horizon/main/DrawerItem;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/main/DrawerItem;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/oculus/horizon/main/DrawerItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/main/DrawerItem;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/main/DrawerItem;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/oculus/horizon/main/DrawerItem;->$VALUES:[Lcom/oculus/horizon/main/DrawerItem;

    invoke-virtual {v0}, [Lcom/oculus/horizon/main/DrawerItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/main/DrawerItem;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
