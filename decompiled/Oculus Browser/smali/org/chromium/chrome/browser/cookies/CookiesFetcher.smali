.class public Lorg/chromium/chrome/browser/cookies/CookiesFetcher;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static createCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZZII)Lorg/chromium/chrome/browser/cookies/CanonicalCookie;
    .locals 16

    .line 1
    new-instance v15, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZZII)V

    return-object v15
.end method

.method public static createCookiesArray(I)[Lorg/chromium/chrome/browser/cookies/CanonicalCookie;
    .locals 0

    .line 1
    new-array p0, p0, [Lorg/chromium/chrome/browser/cookies/CanonicalCookie;

    return-object p0
.end method

.method public static onCookieFetchFinished([Lorg/chromium/chrome/browser/cookies/CanonicalCookie;)V
    .locals 1

    .line 1
    new-instance v0, LU50;

    invoke-direct {v0, p0}, LU50;-><init>([Lorg/chromium/chrome/browser/cookies/CanonicalCookie;)V

    sget-object p0, LkW;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 2
    invoke-virtual {v0, p0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void
.end method
