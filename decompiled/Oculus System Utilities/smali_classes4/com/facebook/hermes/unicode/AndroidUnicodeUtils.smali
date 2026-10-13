.class public Lcom/facebook/hermes/unicode/AndroidUnicodeUtils;
.super Ljava/lang/Object;
.source "AndroidUnicodeUtils.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStripAny;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToCase(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "targetCase"    # I
    .param p2, "useCurrentLocale"    # Z

    .prologue
    .line 37
    const/4 v2, 0x0

    .line 38
    .local v2, "targetUppercase":I
    const/4 v1, 0x1

    .line 42
    .local v1, "targetLowercase":I
    if-eqz p2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 43
    .local v0, "locale":Ljava/util/Locale;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 49
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Invalid target case"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 42
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    goto :goto_0

    .line 45
    .restart local v0    # "locale":Ljava/util/Locale;
    :pswitch_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 47
    :goto_1
    return-object v3

    :pswitch_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static dateFormat(DZZ)Ljava/lang/String;
    .locals 4
    .param p0, "unixtimeMs"    # D
    .param p2, "formatDate"    # Z
    .param p3, "formatTime"    # Z

    .prologue
    const/4 v1, 0x2

    .line 23
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 24
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    .line 32
    .local v0, "format":Ljava/text/DateFormat;
    :goto_0
    double-to-long v2, p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 25
    .end local v0    # "format":Ljava/text/DateFormat;
    :cond_0
    if-eqz p2, :cond_1

    .line 26
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0    # "format":Ljava/text/DateFormat;
    goto :goto_0

    .line 27
    .end local v0    # "format":Ljava/text/DateFormat;
    :cond_1
    if-eqz p3, :cond_2

    .line 28
    invoke-static {v1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0    # "format":Ljava/text/DateFormat;
    goto :goto_0

    .line 30
    .end local v0    # "format":Ljava/text/DateFormat;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bad dateFormat configuration"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static localeCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "left"    # Ljava/lang/String;
    .param p1, "right"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 18
    .local v0, "collator":Ljava/text/Collator;
    invoke-virtual {v0, p0, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static normalize(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "form"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "formC":I
    const/4 v1, 0x1

    .line 57
    .local v1, "formD":I
    const/4 v2, 0x2

    .line 58
    .local v2, "formKC":I
    const/4 v3, 0x3

    .line 60
    .local v3, "formKD":I
    packed-switch p1, :pswitch_data_0

    .line 70
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid form"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 62
    :pswitch_0
    sget-object v4, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p0, v4}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v4

    .line 68
    :goto_0
    return-object v4

    .line 64
    :pswitch_1
    sget-object v4, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v4}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 66
    :pswitch_2
    sget-object v4, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {p0, v4}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 68
    :pswitch_3
    sget-object v4, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v4}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
