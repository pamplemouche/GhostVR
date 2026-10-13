.class public Lju0;
.super LCQ0;
.source "PG"


# static fields
.field public static L:Ljava/util/regex/Pattern;


# instance fields
.field public G:Landroid/content/Context;

.field public H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v2

    .line 2
    iget-object v3, p2, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->o:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    .line 4
    invoke-direct/range {v0 .. v5}, LCQ0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 5
    iput-object p1, p0, Lju0;->G:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, LCQ0;->y:Z

    .line 8
    invoke-virtual {p0}, Lju0;->i()V

    return-void
.end method

.method public static a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;I)I
    .locals 3

    .line 11
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {}, LqU;->a()LqU;

    move-result-object v2

    if-eq p1, v1, :cond_1

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 16
    :try_start_2
    invoke-virtual {v2}, LqU;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 17
    sget-object v1, LRB;->a:LLB;

    invoke-virtual {v1, p0, v0}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 18
    :goto_1
    throw p1

    :cond_1
    :goto_2
    invoke-virtual {v2}, LqU;->close()V

    .line 19
    invoke-static {p0}, Lju0;->b(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-static {p1, v1}, LJ/N;->MYL32Aph(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    if-nez v1, :cond_3

    goto :goto_3

    .line 23
    :cond_3
    invoke-static {p0, v1}, Lju0;->b(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    or-int/lit8 v0, v0, 0x8

    :cond_5
    return v0
.end method

.method public static a(I)Landroid/util/Pair;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const p0, 0x7f1304d0

    const v0, 0x7f1304ad

    goto :goto_0

    :cond_0
    const p0, 0x7f1304cd

    const v0, 0x7f1304b2

    goto :goto_0

    :cond_1
    const p0, 0x7f1304d7

    const v0, 0x7f1304b0

    goto :goto_0

    :cond_2
    const p0, 0x7f1304dd

    const v0, 0x7f1304b1

    goto :goto_0

    :cond_3
    const v0, 0x7f1304c6

    const/4 p0, 0x0

    .line 10
    :goto_0
    new-instance v1, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static b(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)Ljava/lang/String;
    .locals 2

    .line 10
    sget-object v0, Lju0;->L:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    const-string v0, "^[A-Z]{2}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lju0;->L:Ljava/util/regex/Pattern;

    :cond_0
    if-eqz p0, :cond_2

    .line 11
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lju0;->L:Ljava/util/regex/Pattern;

    .line 12
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static b(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :pswitch_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getCompanyName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :pswitch_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getStreetAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getPostalCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getSortingCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getDependentLocality()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_6
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getLocality()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_7
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getRegion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_8
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lju0;->I:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lju0;->J:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lju0;->K:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 5
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 6
    iget-object v2, v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->o:Ljava/lang/String;

    .line 7
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p0, p1, v0, v2, v1}, LCQ0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lju0;->i()V

    return-void
.end method

.method public final i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lju0;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;I)I

    move-result v0

    .line 3
    invoke-static {v0}, Lju0;->a(I)Landroid/util/Pair;

    move-result-object v0

    .line 4
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lju0;->G:Landroid/content/Context;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, LCQ0;->z:Ljava/lang/String;

    .line 6
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v2, p0, Lju0;->G:Landroid/content/Context;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p0, LCQ0;->A:Ljava/lang/String;

    .line 8
    iget-object v0, p0, LCQ0;->z:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, LCQ0;->w:Z

    .line 9
    iget-object v0, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-static {v0, v1}, Lju0;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;I)I

    move-result v0

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_5

    add-int/lit8 v1, v1, 0xa

    .line 10
    :cond_5
    iput v1, p0, LCQ0;->x:I

    return-void
.end method

.method public j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lju0;->K:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    iget-object v1, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 3
    iget-wide v2, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 4
    invoke-static {v2, v3, v0, v1}, LJ/N;->My71lPBY(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lju0;->K:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object v0, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    iget-object v1, p0, Lju0;->K:Ljava/lang/String;

    .line 7
    iput-object v1, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->o:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v1}, LCQ0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lju0;->I:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    iget-object v1, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 3
    iget-wide v2, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 4
    invoke-static {v2, v3, v0, v1}, LJ/N;->MGJNOClH(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lju0;->I:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object v0, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    iget-object v1, p0, Lju0;->I:Ljava/lang/String;

    .line 7
    iput-object v1, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->o:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v1}, LCQ0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lju0;->J:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    iget-object v1, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 3
    iget-wide v2, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 4
    invoke-static {v2, v3, v0, v1}, LJ/N;->MGlLlw0K(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lju0;->J:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object v0, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    iget-object v1, p0, Lju0;->J:Ljava/lang/String;

    .line 7
    iput-object v1, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->o:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v1}, LCQ0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public m()LS81;
    .locals 3

    .line 1
    new-instance v0, LS81;

    invoke-direct {v0}, LS81;-><init>()V

    .line 2
    iget-object v1, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-static {v1}, Lju0;->b(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LS81;->b:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getStreetAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LS81;->c:[Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getRegion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LS81;->d:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getLocality()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LS81;->e:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getDependentLocality()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LS81;->f:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LS81;->g:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getSortingCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LS81;->h:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getCompanyName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LS81;->i:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LS81;->j:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LS81;->k:Ljava/lang/String;

    return-object v0
.end method
