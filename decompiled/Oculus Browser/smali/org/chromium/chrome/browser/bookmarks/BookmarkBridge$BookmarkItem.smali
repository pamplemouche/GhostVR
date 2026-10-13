.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lorg/chromium/components/bookmarks/BookmarkId;

.field public final d:Z

.field public final e:Lorg/chromium/components/bookmarks/BookmarkId;

.field public final f:Z

.field public final g:Z


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/bookmarks/BookmarkId;Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/components/bookmarks/BookmarkId;ZZLO10;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->c:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 3
    iput-object p2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->b:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->d:Z

    .line 6
    iput-object p5, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->e:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 7
    iput-boolean p6, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->f:Z

    .line 8
    iput-boolean p7, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->g:Z

    return-void
.end method
