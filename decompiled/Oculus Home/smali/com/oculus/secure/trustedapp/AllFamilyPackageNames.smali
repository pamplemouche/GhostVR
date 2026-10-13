.class public Lcom/oculus/secure/trustedapp/AllFamilyPackageNames;
.super Ljava/lang/Object;
.source "AllFamilyPackageNames.java"


# static fields
.field public static final ADSMANAGER:Ljava/lang/String; = "com.facebook.adsmanager"

.field public static final AKIRA:Ljava/lang/String; = "com.facebook.akira"

.field public static final ALL_FAMILY_PACKAGE_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALL_FB_PACKAGE_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALL_INHOUSE_PACKAGE_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BISHOP:Ljava/lang/String; = "com.facebook.bishop"

.field public static final DAYKIRA:Ljava/lang/String; = "com.facebook.daykira"

.field public static final DIRECT:Ljava/lang/String; = "com.instagram.direct"

.field public static final GAMES:Ljava/lang/String; = "com.facebook.games"

.field public static final GS_CRISIS_MANAGEMENT:Ljava/lang/String; = "com.facebook.globalsecurity"

.field public static final HELLO:Ljava/lang/String; = "com.facebook.phone"

.field public static final HOME:Ljava/lang/String; = "com.facebook.home"

.field public static final HOME_DEV:Ljava/lang/String; = "com.facebook.home.dev"

.field public static final INSTAGRAM:Ljava/lang/String; = "com.instagram.android"

.field public static final INSTAGRAM_LITE:Ljava/lang/String; = "com.instagram.lite"

.field public static final INSTAGRAM_PACKAGE_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KATANA:Ljava/lang/String; = "com.facebook.katana"

.field public static final KOTOTORO:Ljava/lang/String; = "com.facebook.kototoro"

.field public static final LASSO:Ljava/lang/String; = "com.facebook.lasso"

.field public static final MESSENGER:Ljava/lang/String; = "com.facebook.orca"

.field public static final MESSENGER_KIDS:Ljava/lang/String; = "com.facebook.talk"

.field public static final MESSENGER_KIDS_DEV:Ljava/lang/String; = "com.facebook.mk"

.field public static final MESSENGER_LITE:Ljava/lang/String; = "com.facebook.mlite"

.field public static final OCULUS_HOME_SHELL:Ljava/lang/String; = "com.oculus.vrshell.home"

.field public static final OCULUS_HORIZON:Ljava/lang/String; = "com.oculus.horizon"

.field public static final OCULUS_HORIZON_DEV:Ljava/lang/String; = "com.oculus.horizon.dev"

.field public static final OCULUS_OCMS:Ljava/lang/String; = "com.oculus.ocms"

.field public static final OCULUS_PACKAGE_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final OCULUS_SHELL:Ljava/lang/String; = "com.oculus.vrshell"

.field public static final OCULUS_TWILIGHT:Ljava/lang/String; = "com.oculus.twilight"

.field public static final PAGES:Ljava/lang/String; = "com.facebook.pages.app"

.field public static final PARTIES:Ljava/lang/String; = "com.facebook.bonfire"

.field public static final PORTAL_PACKAGE_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final WAKIZASHI:Ljava/lang/String; = "com.facebook.wakizashi"

.field public static final WHATSAPP:Ljava/lang/String; = "com.whatsapp"

.field public static final WORK:Ljava/lang/String; = "com.facebook.work"

.field public static final WORKDEV:Ljava/lang/String; = "com.facebook.workdev"

.field public static final WORK_CHAT:Ljava/lang/String; = "com.facebook.workchat"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1e

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.facebook.adsmanager"

    aput-object v2, v1, v4

    const-string v2, "com.facebook.akira"

    aput-object v2, v1, v5

    const-string v2, "com.facebook.daykira"

    aput-object v2, v1, v6

    const-string v2, "com.instagram.direct"

    aput-object v2, v1, v7

    const-string v2, "com.facebook.games"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "com.facebook.phone"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "com.facebook.home"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "com.facebook.home.dev"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "com.instagram.android"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "com.instagram.lite"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "com.facebook.katana"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "com.facebook.kototoro"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "com.facebook.lasso"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "com.facebook.orca"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "com.facebook.talk"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "com.facebook.mk"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "com.facebook.mlite"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "com.oculus.vrshell"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "com.oculus.horizon"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "com.oculus.horizon.dev"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "com.oculus.vrshell.home"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "com.oculus.ocms"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "com.oculus.twilight"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "com.facebook.pages.app"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "com.facebook.bonfire"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "com.facebook.wakizashi"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "com.whatsapp"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "com.facebook.work"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "com.facebook.workdev"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "com.facebook.workchat"

    aput-object v3, v1, v2

    .line 51
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 49
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/oculus/secure/trustedapp/AllFamilyPackageNames;->ALL_FAMILY_PACKAGE_NAMES:Ljava/util/Set;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.facebook.adsmanager"

    aput-object v2, v1, v4

    const-string v2, "com.facebook.phone"

    aput-object v2, v1, v5

    const-string v2, "com.facebook.home"

    aput-object v2, v1, v6

    const-string v2, "com.facebook.home.dev"

    aput-object v2, v1, v7

    const-string v2, "com.facebook.katana"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "com.facebook.orca"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "com.facebook.talk"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "com.facebook.mk"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "com.facebook.mlite"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "com.facebook.pages.app"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "com.facebook.bonfire"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "com.facebook.wakizashi"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "com.facebook.work"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "com.facebook.workdev"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "com.facebook.workchat"

    aput-object v3, v1, v2

    .line 86
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 84
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/oculus/secure/trustedapp/AllFamilyPackageNames;->ALL_FB_PACKAGE_NAMES:Ljava/util/Set;

    .line 103
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.facebook.globalsecurity"

    aput-object v2, v1, v4

    .line 104
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/oculus/secure/trustedapp/AllFamilyPackageNames;->ALL_INHOUSE_PACKAGE_NAMES:Ljava/util/Set;

    .line 106
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "com.instagram.direct"

    aput-object v2, v1, v4

    const-string v2, "com.instagram.android"

    aput-object v2, v1, v5

    const-string v2, "com.instagram.lite"

    aput-object v2, v1, v6

    .line 107
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/oculus/secure/trustedapp/AllFamilyPackageNames;->INSTAGRAM_PACKAGE_NAMES:Ljava/util/Set;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.oculus.vrshell.home"

    aput-object v2, v1, v4

    const-string v2, "com.oculus.horizon"

    aput-object v2, v1, v5

    const-string v2, "com.oculus.horizon.dev"

    aput-object v2, v1, v6

    const-string v2, "com.oculus.ocms"

    aput-object v2, v1, v7

    const-string v2, "com.oculus.twilight"

    aput-object v2, v1, v8

    .line 112
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 110
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/oculus/secure/trustedapp/AllFamilyPackageNames;->OCULUS_PACKAGE_NAMES:Ljava/util/Set;

    .line 115
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.facebook.bishop"

    aput-object v2, v1, v4

    .line 116
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/oculus/secure/trustedapp/AllFamilyPackageNames;->PORTAL_PACKAGE_NAMES:Ljava/util/Set;

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFirstPartyPackageName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 124
    sget-object v0, Lcom/oculus/secure/trustedapp/AllFamilyPackageNames;->ALL_FAMILY_PACKAGE_NAMES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
