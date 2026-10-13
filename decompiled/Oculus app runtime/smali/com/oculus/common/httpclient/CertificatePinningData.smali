.class public Lcom/oculus/common/httpclient/CertificatePinningData;
.super Ljava/lang/Object;
.source "CertificatePinningData.java"


# static fields
.field public static final FB_CERT_SHA256_PINS:[Ljava/lang/String;

.field public static final FB_INTERNAL_CERT_SHA256_PINS:[Ljava/lang/String;

.field public static final PINNING_EXPIRATION_MS:J = 0x757b12c00L


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "lCppFqbkrlJ3EcVFAkeip0+44VaoJUymbnOaEUk7tEU="

    const-string v1, "grX4Ta9HpZx6tSHkmCrvpApTQGo67CYDnvprLg5yRME="

    const-string v2, "I/Lt/z7ekCWanjD0Cvj5EqXls2lOaThEA0H2Bg4BT/o="

    const-string v3, "8ca6Zwz8iOTfUpc8rkIPCgid1HQUT+WAbEIAZOFZEik="

    const-string v4, "Fe7TOVlLME+M+Ee0dzcdjW/sYfTbKwGvWJ58U7Ncrkw="

    const-string v5, "r/mIkG3eEpVdm+u/ko/cwxzOMo1bk4TyHIlByibiA5E="

    const-string v6, "i7WTqTvh0OioIruIfFR4kMPnBqrS2rdiVPl/s2uC/CY="

    const-string v7, "uUwZgwDOxcBXrQcntwu+kYFpkiVkOaezL0WYEZ3anJc="

    const-string v8, "PZXN3lRAy+8tBKk2Ox6F7jIlnzr2Yzmwqc3JnyfXoCw="

    const-string v9, "WoiWRyIOVNa9ihaBciRSC7XHjliYS9VwUGOIud4PB18="

    const-string v10, "Wd8xe/qfTwq3ylFNd3IpaqLHZbh2ZNCLluVzmeNkcpw="

    const-string v11, "K87oWBWM9UZfyddvDfoxL+8lpNyoUB2ptGtn0fv6G2Q="

    const-string v12, "iie1VXtL7HzAMF+/PVPR9xzT80kQxdZeJ+zduCB3uj0="

    const-string v13, "cGuxAXyFXFkWm61cF4HPWX8S0srS9j0aSqN0k4AP+4A="

    const-string v14, "q4PO2G2cbkZhZ82+JgmRUyGMoAeozA+BSXVXQWB8XWQ="

    .line 18
    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/common/httpclient/CertificatePinningData;->FB_CERT_SHA256_PINS:[Ljava/lang/String;

    const-string v0, "7AhOJILp8Za8ynfo1/vxGzDrBXgYSONtNyiWptw2Q+g="

    const-string v1, "9mgSamFIPhBTta7QSyJExQ508KsU1Fm3yw+pzPBAsKs="

    .line 53
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/common/httpclient/CertificatePinningData;->FB_INTERNAL_CERT_SHA256_PINS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
