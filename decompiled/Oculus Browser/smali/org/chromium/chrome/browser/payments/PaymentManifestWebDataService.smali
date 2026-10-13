.class public Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, LJ/N;->M9X__o$R(Ljava/lang/Object;)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;->a:J

    return-void
.end method

.method public static addFingerprintToSection([Lorg/chromium/components/payments/WebAppManifestSection;II[B)V
    .locals 0

    .line 1
    aget-object p0, p0, p1

    iget-object p0, p0, Lorg/chromium/components/payments/WebAppManifestSection;->c:[[B

    aput-object p3, p0, p2

    return-void
.end method

.method public static addSectionToManifest([Lorg/chromium/components/payments/WebAppManifestSection;ILjava/lang/String;JI)V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/components/payments/WebAppManifestSection;

    invoke-direct {v0, p2, p3, p4, p5}, Lorg/chromium/components/payments/WebAppManifestSection;-><init>(Ljava/lang/String;JI)V

    aput-object v0, p0, p1

    return-void
.end method

.method public static createManifest(I)[Lorg/chromium/components/payments/WebAppManifestSection;
    .locals 0

    .line 1
    new-array p0, p0, [Lorg/chromium/components/payments/WebAppManifestSection;

    return-object p0
.end method

.method public static getFingerprintsFromSection(Lorg/chromium/components/payments/WebAppManifestSection;)[[B
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/components/payments/WebAppManifestSection;->c:[[B

    return-object p0
.end method

.method public static getIdFromSection(Lorg/chromium/components/payments/WebAppManifestSection;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/components/payments/WebAppManifestSection;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static getMinVersionFromSection(Lorg/chromium/components/payments/WebAppManifestSection;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/components/payments/WebAppManifestSection;->b:J

    return-wide v0
.end method
