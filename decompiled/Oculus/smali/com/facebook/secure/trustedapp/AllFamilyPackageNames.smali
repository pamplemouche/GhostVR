.class public Lcom/facebook/secure/trustedapp/AllFamilyPackageNames;
.super Ljava/lang/Object;
.source "AllFamilyPackageNames.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DirectOrcaPackageUse"
    }
.end annotation


# static fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x20

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.facebook.adsmanager"

    aput-object v2, v1, v4

    const-string v2, "com.facebook.akira"

    aput-object v2, v1, v5

    const-string v2, "com.facebook.bishop"

    aput-object v2, v1, v6

    const-string v2, "com.facebook.daykira"

    aput-object v2, v1, v7

    const-string v2, "com.instagram.direct"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "com.facebook.lite"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "com.facebook.games"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "com.facebook.phone"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "com.facebook.home"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "com.facebook.home.dev"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "com.instagram.android"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "com.instagram.lite"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "com.facebook.katana"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "com.facebook.kototoro"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "com.facebook.lasso"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "com.facebook.orca"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "com.facebook.talk"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "com.facebook.mk"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "com.facebook.mlite"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "com.oculus.vrshell"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "com.oculus.horizon"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "com.oculus.horizon.dev"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "com.oculus.vrshell.home"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "com.oculus.twilight"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "com.facebook.pages.app"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "com.facebook.bonfire"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "com.instagram.threadsapp"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "com.facebook.wakizashi"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "com.whatsapp"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "com.facebook.work"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "com.facebook.workdev"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "com.facebook.workchat"

    aput-object v3, v1, v2

    .line 57
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 55
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/secure/trustedapp/AllFamilyPackageNames;->ALL_FAMILY_PACKAGE_NAMES:Ljava/util/Set;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.facebook.adsmanager"

    aput-object v2, v1, v4

    const-string v2, "com.facebook.lite"

    aput-object v2, v1, v5

    const-string v2, "com.facebook.phone"

    aput-object v2, v1, v6

    const-string v2, "com.facebook.home"

    aput-object v2, v1, v7

    const-string v2, "com.facebook.home.dev"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "com.facebook.katana"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "com.facebook.orca"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "com.facebook.talk"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "com.facebook.mk"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "com.facebook.mlite"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "com.facebook.pages.app"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "com.facebook.bonfire"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "com.facebook.wakizashi"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "com.facebook.work"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "com.facebook.workdev"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "com.facebook.workchat"

    aput-object v3, v1, v2

    .line 94
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 92
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/secure/trustedapp/AllFamilyPackageNames;->ALL_FB_PACKAGE_NAMES:Ljava/util/Set;

    .line 112
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.facebook.globalsecurity"

    aput-object v2, v1, v4

    .line 113
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/secure/trustedapp/AllFamilyPackageNames;->ALL_INHOUSE_PACKAGE_NAMES:Ljava/util/Set;

    .line 115
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "com.instagram.direct"

    aput-object v2, v1, v4

    const-string v2, "com.instagram.android"

    aput-object v2, v1, v5

    const-string v2, "com.instagram.lite"

    aput-object v2, v1, v6

    const-string v2, "com.instagram.threadsapp"

    aput-object v2, v1, v7

    .line 117
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 116
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/secure/trustedapp/AllFamilyPackageNames;->INSTAGRAM_PACKAGE_NAMES:Ljava/util/Set;

    .line 119
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.oculus.assistant"

    aput-object v2, v1, v4

    const-string v2, "com.oculus.vrshell.home"

    aput-object v2, v1, v5

    const-string v2, "com.oculus.horizon"

    aput-object v2, v1, v6

    const-string v2, "com.oculus.horizon.dev"

    aput-object v2, v1, v7

    const-string v2, "com.oculus.ocms"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "com.oculus.twilight"

    aput-object v3, v1, v2

    .line 122
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 120
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/secure/trustedapp/AllFamilyPackageNames;->OCULUS_PACKAGE_NAMES:Ljava/util/Set;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.facebook.bishop"

    aput-object v2, v1, v4

    .line 131
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/secure/trustedapp/AllFamilyPackageNames;->PORTAL_PACKAGE_NAMES:Ljava/util/Set;

    .line 130
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
