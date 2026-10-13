.class public final synthetic LwC0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge$StorageInfoClearedCallback;


# instance fields
.field public final a:LyC0;

.field public final b:LxC0;


# direct methods
.method public constructor <init>(LyC0;LxC0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LwC0;->a:LyC0;

    iput-object p2, p0, LwC0;->b:LxC0;

    return-void
.end method


# virtual methods
.method public onStorageInfoCleared()V
    .locals 3

    iget-object v0, p0, LwC0;->a:LyC0;

    iget-object v1, p0, LwC0;->b:LxC0;

    .line 1
    iget v2, v0, LyC0;->C:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, LyC0;->C:I

    if-nez v2, :cond_0

    invoke-interface {v1}, LxC0;->a()V

    :cond_0
    return-void
.end method
