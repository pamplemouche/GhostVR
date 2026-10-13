.class public Lcom/facebook/netlite/certificatepinning/internal/CertificatePinningData;
.super Ljava/lang/Object;
.source "CertificatePinningData.java"


# static fields
.field public static final FB_CERT_SHA256_PINS:[Ljava/lang/String;

.field public static final FB_INTERNAL_CERT_SHA256_PINS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lCppFqbkrlJ3EcVFAkeip0+44VaoJUymbnOaEUk7tEU="

    aput-object v1, v0, v3

    const-string v1, "grX4Ta9HpZx6tSHkmCrvpApTQGo67CYDnvprLg5yRME="

    aput-object v1, v0, v4

    const-string v1, "I/Lt/z7ekCWanjD0Cvj5EqXls2lOaThEA0H2Bg4BT/o="

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "8ca6Zwz8iOTfUpc8rkIPCgid1HQUT+WAbEIAZOFZEik="

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Fe7TOVlLME+M+Ee0dzcdjW/sYfTbKwGvWJ58U7Ncrkw="

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "r/mIkG3eEpVdm+u/ko/cwxzOMo1bk4TyHIlByibiA5E="

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "i7WTqTvh0OioIruIfFR4kMPnBqrS2rdiVPl/s2uC/CY="

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "uUwZgwDOxcBXrQcntwu+kYFpkiVkOaezL0WYEZ3anJc="

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "PZXN3lRAy+8tBKk2Ox6F7jIlnzr2Yzmwqc3JnyfXoCw="

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "WoiWRyIOVNa9ihaBciRSC7XHjliYS9VwUGOIud4PB18="

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Wd8xe/qfTwq3ylFNd3IpaqLHZbh2ZNCLluVzmeNkcpw="

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K87oWBWM9UZfyddvDfoxL+8lpNyoUB2ptGtn0fv6G2Q="

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "iie1VXtL7HzAMF+/PVPR9xzT80kQxdZeJ+zduCB3uj0="

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "cGuxAXyFXFkWm61cF4HPWX8S0srS9j0aSqN0k4AP+4A="

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "q4PO2G2cbkZhZ82+JgmRUyGMoAeozA+BSXVXQWB8XWQ="

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/netlite/certificatepinning/internal/CertificatePinningData;->FB_CERT_SHA256_PINS:[Ljava/lang/String;

    .line 49
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "7AhOJILp8Za8ynfo1/vxGzDrBXgYSONtNyiWptw2Q+g="

    aput-object v1, v0, v3

    const-string v1, "9mgSamFIPhBTta7QSyJExQ508KsU1Fm3yw+pzPBAsKs="

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/netlite/certificatepinning/internal/CertificatePinningData;->FB_INTERNAL_CERT_SHA256_PINS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
