.class public final Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static b:Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;


# instance fields
.field public a:LHA0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;->b:Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;->b:Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;

    .line 3
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;->b:Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;

    return-object v0
.end method

.method public static b()Lorg/chromium/chrome/browser/profiles/Profile;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/profiles/Profile;->b()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    return-object v0
.end method

.method private browsingDataCleared()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;->a:LHA0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, LHA0;->c()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;->a:LHA0;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(LHA0;[II)V
    .locals 9

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    new-array v6, v0, [I

    new-array v7, v0, [Ljava/lang/String;

    new-array v8, v0, [I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 4
    invoke-virtual/range {v1 .. v8}, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;->a(LHA0;[II[Ljava/lang/String;[I[Ljava/lang/String;[I)V

    return-void
.end method

.method public a(LHA0;[II[Ljava/lang/String;[I[Ljava/lang/String;[I)V
    .locals 8

    .line 5
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;->a:LHA0;

    .line 6
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;->b()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 7
    invoke-static/range {v0 .. v7}, LJ/N;->M8GjisaG(Ljava/lang/Object;Ljava/lang/Object;[II[Ljava/lang/String;[I[Ljava/lang/String;[I)V

    return-void
.end method
