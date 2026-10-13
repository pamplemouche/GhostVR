.class public Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 17

    .line 17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    const-string v15, ""

    const-string v16, ""

    const-string v2, ""

    const-string v3, "Chrome settings"

    const/4 v4, 0x1

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v14, ""

    move-object/from16 v1, p0

    .line 18
    invoke-direct/range {v1 .. v16}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->b:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->c:Z

    .line 5
    iput-object p4, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->e:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->f:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->g:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->h:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->i:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->j:Ljava/lang/String;

    .line 12
    iput-object p11, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->k:Ljava/lang/String;

    .line 13
    iput-object p12, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->l:Ljava/lang/String;

    .line 14
    iput-object p13, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->m:Ljava/lang/String;

    .line 15
    iput-object p14, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->n:Ljava/lang/String;

    .line 16
    iput-object p15, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->a:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getOrigin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->b:Ljava/lang/String;

    .line 22
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->c:Z

    .line 23
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->c:Z

    .line 24
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->d:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getCompanyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->e:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getStreetAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->f:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getRegion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->g:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getLocality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->h:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getDependentLocality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->i:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->j:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getSortingCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->k:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->l:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->m:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->n:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->p:Ljava/lang/String;

    .line 36
    iget-object p1, p1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->o:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->o:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;
    .locals 17

    .line 1
    new-instance v16, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v16
.end method


# virtual methods
.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getDependentLocality()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getSortingCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->f:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->o:Ljava/lang/String;

    return-object v0
.end method
