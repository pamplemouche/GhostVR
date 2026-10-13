.class public Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static pushSession(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJ)Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;
    .locals 8

    .line 1
    new-instance v7, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;-><init>(Ljava/lang/String;Ljava/lang/String;IJLHm0;)V

    .line 2
    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method public static pushTab(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionWindow;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8

    .line 1
    new-instance v7, LIm0;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, LIm0;-><init>(Ljava/lang/String;Ljava/lang/String;JILHm0;)V

    .line 2
    iget-object p0, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionWindow;->a:Ljava/util/List;

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static pushWindow(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;JI)Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionWindow;
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionWindow;-><init>(JILHm0;)V

    .line 2
    iget-object p0, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;->a:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
