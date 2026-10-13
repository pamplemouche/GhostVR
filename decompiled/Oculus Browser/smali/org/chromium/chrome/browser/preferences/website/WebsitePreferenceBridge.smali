.class public Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LcC0;

    .line 2
    iget-object v2, v1, LcC0;->y:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v1, v1, LcC0;->x:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 6
    :cond_2
    new-instance v0, LcC0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p3, v1}, LcC0;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static createLocalStorageInfoMap()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static createStorageInfoList()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static insertCameraInfoIntoList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->a(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertChosenObjectInfoIntoList(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    new-instance v7, LOB0;

    move-object v0, v7

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, LOB0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static insertClipboardInfoIntoList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->a(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertGeolocationInfoIntoList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->a(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertLocalStorageInfoIntoMap(Ljava/util/HashMap;Ljava/lang/String;JZ)V
    .locals 1

    .line 1
    new-instance v0, LZB0;

    invoke-direct {v0, p1, p2, p3, p4}, LZB0;-><init>(Ljava/lang/String;JZ)V

    .line 2
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static insertMicrophoneInfoIntoList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->a(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertMidiInfoIntoList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->a(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertNotificationIntoList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-static {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->a(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertProtectedMediaIdentifierInfoIntoList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-static {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->a(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertSensorsInfoIntoList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    .line 1
    invoke-static {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->a(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertStorageInfoIntoList(Ljava/util/ArrayList;Ljava/lang/String;IJ)V
    .locals 1

    .line 1
    new-instance v0, LvC0;

    invoke-direct {v0, p1, p2, p3, p4}, LvC0;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
