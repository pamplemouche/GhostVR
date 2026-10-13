.class public LAv0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/autofill/PersonalDataManager$NormalizedAddressRequestDelegate;


# instance fields
.field public A:Z

.field public w:Lju0;

.field public x:LF91;

.field public y:Lzv0;

.field public z:Z


# direct methods
.method public constructor <init>(LCQ0;LCQ0;LCQ0;Lzv0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LAv0;->A:Z

    .line 3
    new-instance v1, LF91;

    invoke-direct {v1}, LF91;-><init>()V

    iput-object v1, p0, LAv0;->x:LF91;

    .line 4
    new-instance v2, LQ81;

    invoke-direct {v2}, LQ81;-><init>()V

    iput-object v2, v1, LF91;->f:LQ81;

    .line 5
    iput-object p4, p0, LAv0;->y:Lzv0;

    if-eqz p3, :cond_0

    .line 6
    iget-object p4, p0, LAv0;->x:LF91;

    iget-object p4, p4, LF91;->f:LQ81;

    check-cast p3, Lku0;

    .line 7
    iget-object v1, p3, Lku0;->M:Ljava/lang/String;

    .line 8
    iput-object v1, p4, LQ81;->c:Ljava/lang/String;

    .line 9
    iget-object v1, p3, Lku0;->N:Ljava/lang/String;

    .line 10
    iput-object v1, p4, LQ81;->d:Ljava/lang/String;

    .line 11
    iget-object p3, p3, Lku0;->O:Ljava/lang/String;

    .line 12
    iput-object p3, p4, LQ81;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13
    invoke-static {v1}, LJ/N;->MntwGN0J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 14
    iput-object p3, p4, LQ81;->d:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    .line 15
    iget-object p2, p2, LCQ0;->C:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 16
    iget-object p3, p0, LAv0;->x:LF91;

    iput-object p2, p3, LF91;->e:Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_3

    .line 17
    check-cast p1, Lju0;

    iput-object p1, p0, LAv0;->w:Lju0;

    .line 18
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object p1

    iget-object p2, p0, LAv0;->w:Lju0;

    .line 19
    iget-object p2, p2, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 20
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 21
    iget-wide p3, p1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 22
    invoke-static {p3, p4, p1, p2}, LJ/N;->MT65YYp8(JLjava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, LAv0;->x:LF91;

    iget-object p2, p0, LAv0;->w:Lju0;

    invoke-virtual {p2}, Lju0;->m()LS81;

    move-result-object p2

    iput-object p2, p1, LF91;->d:LS81;

    .line 24
    iput-boolean v0, p0, LAv0;->z:Z

    .line 25
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object p1

    iget-object p2, p0, LAv0;->w:Lju0;

    .line 26
    iget-object p2, p2, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 27
    invoke-virtual {p1, p2, p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;Lorg/chromium/chrome/browser/autofill/PersonalDataManager$NormalizedAddressRequestDelegate;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 28
    throw p1

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onAddressNormalized(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, LAv0;->z:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LAv0;->z:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, LAv0;->w:Lju0;

    invoke-virtual {v0, p1}, Lju0;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)V

    .line 4
    iget-object p1, p0, LAv0;->x:LF91;

    iget-object v0, p0, LAv0;->w:Lju0;

    invoke-virtual {v0}, Lju0;->m()LS81;

    move-result-object v0

    iput-object v0, p1, LF91;->d:LS81;

    .line 5
    :cond_1
    iget-boolean p1, p0, LAv0;->A:Z

    if-nez p1, :cond_2

    iget-object p1, p0, LAv0;->y:Lzv0;

    iget-object v0, p0, LAv0;->x:LF91;

    check-cast p1, Lyv0;

    invoke-virtual {p1, v0}, Lyv0;->a(LF91;)V

    :cond_2
    return-void
.end method

.method public onCouldNotNormalize(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, LAv0;->z:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LAv0;->z:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, LAv0;->w:Lju0;

    invoke-virtual {v0, p1}, Lju0;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)V

    .line 4
    iget-object p1, p0, LAv0;->x:LF91;

    iget-object v0, p0, LAv0;->w:Lju0;

    invoke-virtual {v0}, Lju0;->m()LS81;

    move-result-object v0

    iput-object v0, p1, LF91;->d:LS81;

    .line 5
    :cond_1
    iget-boolean p1, p0, LAv0;->A:Z

    if-nez p1, :cond_2

    iget-object p1, p0, LAv0;->y:Lzv0;

    iget-object v0, p0, LAv0;->x:LF91;

    check-cast p1, Lyv0;

    invoke-virtual {p1, v0}, Lyv0;->a(LF91;)V

    :cond_2
    :goto_0
    return-void
.end method
