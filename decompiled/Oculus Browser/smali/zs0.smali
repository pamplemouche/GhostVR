.class public Lzs0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public A:Ljava/security/cert/CertificateFactory;

.field public B:Landroid/app/Dialog;

.field public final w:Landroid/content/Context;

.field public final x:I

.field public y:Ljava/util/ArrayList;

.field public z:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzs0;->w:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070097

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lzs0;->x:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lzs0;->B:Landroid/app/Dialog;

    return-void
.end method

.method public static a([BC)Ljava/lang/String;
    .locals 6

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 127
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 128
    aget-byte v5, p0, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    array-length v4, p0

    sub-int/2addr v4, v3

    if-eq v2, v4, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 4

    .line 120
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lzs0;->w:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x5

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 122
    iget v1, p0, Lzs0;->x:I

    div-int/lit8 v2, v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 123
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f1401c5

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 125
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public final a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 117
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-virtual {p0, p1, p2}, Lzs0;->a(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 119
    invoke-virtual {p0, p1, p3}, Lzs0;->b(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/security/cert/Certificate;[B[B)V
    .locals 7

    .line 48
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzs0;->w:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    iget-object v1, p0, Lzs0;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 52
    new-instance v2, Landroid/net/http/SslCertificate;

    invoke-direct {v2, p1}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 53
    iget-object v3, p0, Lzs0;->y:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-static {}, LJ/N;->M5pYmpQY()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {p0, v0, v3}, Lzs0;->a(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    .line 56
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 57
    invoke-static {}, LJ/N;->M4hdCqVP()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-virtual {p0, v0, v3, v4}, Lzs0;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {}, LJ/N;->ML$Id2$r()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {p0, v0, v3, v4}, Lzs0;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, LJ/N;->MPC7XSD8()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-virtual {p0, v0, v3, v4}, Lzs0;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, LJ/N;->MM_MxPQr()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    const/16 v5, 0x3a

    invoke-static {v4, v5}, Lzs0;->a([BC)Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {p0, v0, v3, v4}, Lzs0;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, LJ/N;->MUt2rDXf()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-virtual {p0, v0, v3}, Lzs0;->a(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    .line 71
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 72
    invoke-static {}, LJ/N;->M4hdCqVP()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {p0, v0, v3, v4}, Lzs0;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, LJ/N;->ML$Id2$r()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {p0, v0, v3, v4}, Lzs0;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, LJ/N;->MPC7XSD8()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-virtual {p0, v0, v3, v4}, Lzs0;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, LJ/N;->MLqm8avW()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-virtual {p0, v0, v3}, Lzs0;->a(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    .line 83
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/4 v3, 0x2

    .line 84
    invoke-static {v3}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v4

    .line 85
    invoke-static {}, LJ/N;->Mr5OqkYg()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getValidNotBeforeDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 87
    invoke-virtual {p0, v0, v5, v6}, Lzs0;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, LJ/N;->MgRy9Cx2()Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getValidNotAfterDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {p0, v0, v5, v2}, Lzs0;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, LJ/N;->MEGCGZiV()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {p0, v0, v2}, Lzs0;->a(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 93
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 94
    invoke-static {}, LJ/N;->MaoyqkG2()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x20

    .line 95
    invoke-static {p2, v4}, Lzs0;->a([BC)Ljava/lang/String;

    move-result-object p2

    .line 96
    invoke-virtual {p0, v0, v2, p2}, Lzs0;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, LJ/N;->MQ238bKU()Ljava/lang/String;

    move-result-object p2

    .line 98
    invoke-static {p3, v4}, Lzs0;->a([BC)Ljava/lang/String;

    move-result-object p3

    .line 99
    invoke-virtual {p0, v0, p2, p3}, Lzs0;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 102
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    .line 103
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_0

    .line 104
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 105
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Integer;

    if-ne v4, v5, :cond_0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 106
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 107
    :cond_1
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_2

    const/4 v4, 0x7

    if-ne v2, v4, :cond_0

    .line 108
    :cond_2
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 110
    invoke-static {}, LJ/N;->M1q5eMK9()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p0, v0, p1}, Lzs0;->a(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    .line 112
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 113
    invoke-static {}, LJ/N;->MGYyyTvf()Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {p0, v0, p1}, Lzs0;->a(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 115
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 116
    invoke-virtual {p0, v0, p2}, Lzs0;->b(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public a([[B)V
    .locals 7

    .line 1
    iget-object v0, p0, Lzs0;->B:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzs0;->y:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzs0;->z:Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 5
    aget-object v2, p1, v1

    .line 6
    :try_start_0
    iget-object v3, p0, Lzs0;->A:Ljava/security/cert/CertificateFactory;

    if-nez v3, :cond_1

    const-string v3, "X.509"

    .line 7
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    iput-object v3, p0, Lzs0;->A:Ljava/security/cert/CertificateFactory;

    .line 8
    :cond_1
    iget-object v3, p0, Lzs0;->A:Ljava/security/cert/CertificateFactory;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    const-string v4, "SHA-256"
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v5, 0x0

    .line 9
    :try_start_1
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 10
    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 11
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-object v4, v5

    :goto_1
    :try_start_2
    const-string v6, "SHA-1"
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 12
    :try_start_3
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 13
    invoke-virtual {v6, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 14
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 15
    :catch_1
    :try_start_4
    invoke-virtual {p0, v3, v4, v5}, Lzs0;->a(Ljava/security/cert/Certificate;[B[B)V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    const-string v3, "Error parsing certificate"

    .line 16
    invoke-static {v3}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CertViewer"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_2
    new-instance p1, Lys0;

    iget-object v1, p0, Lzs0;->w:Landroid/content/Context;

    const v2, 0x1090008

    iget-object v3, p0, Lzs0;->y:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v1, v2, v3}, Lys0;-><init>(Lzs0;Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    .line 18
    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 19
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzs0;->w:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 21
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lzs0;->w:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1301de

    .line 22
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const/4 v4, 0x5

    .line 23
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextAlignment(I)V

    const v5, 0x1030042

    .line 24
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 25
    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 26
    iget v5, p0, Lzs0;->x:I

    div-int/lit8 v6, v5, 0x2

    invoke-virtual {v3, v5, v5, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 27
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 28
    new-instance v3, Landroid/widget/Spinner;

    iget-object v5, p0, Lzs0;->w:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setTextAlignment(I)V

    .line 30
    invoke-virtual {v3, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 31
    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 p1, -0x1

    .line 32
    invoke-virtual {v3, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    .line 33
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/Spinner;->setPadding(IIII)V

    .line 34
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 35
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lzs0;->w:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 37
    :goto_3
    iget-object v4, p0, Lzs0;->z:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 38
    iget-object v4, p0, Lzs0;->z:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    const/16 v5, 0x8

    .line 39
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 40
    :cond_3
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 41
    :cond_4
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v4, p0, Lzs0;->w:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 43
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 44
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lzs0;->w:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzs0;->B:Landroid/app/Dialog;

    .line 45
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 46
    iget-object v0, p0, Lzs0;->B:Landroid/app/Dialog;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object p1, p0, Lzs0;->B:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final b(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lzs0;->w:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x5

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget p2, p0, Lzs0;->x:I

    div-int/lit8 v1, p2, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, p2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f1401b8

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 1
    :goto_0
    iget-object p4, p0, Lzs0;->z:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p2, p4, :cond_1

    .line 2
    iget-object p4, p0, Lzs0;->z:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    if-ne p2, p3, :cond_0

    const/4 p5, 0x0

    goto :goto_1

    :cond_0
    const/16 p5, 0x8

    :goto_1
    invoke-virtual {p4, p5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
