.class public LPA0;
.super Lb3;
.source "PG"


# instance fields
.field public final e:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

.field public final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;LH2;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lb3;-><init>(LH2;)V

    .line 2
    iput-object p1, p0, LPA0;->e:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

    .line 3
    iput-object p3, p0, LPA0;->f:Landroid/content/Context;

    return-void
.end method
