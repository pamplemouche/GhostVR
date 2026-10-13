.class public final synthetic LM00;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LN00;


# direct methods
.method public constructor <init>(LN00;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM00;->a:LN00;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LM00;->a:LN00;

    check-cast p1, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    .line 1
    iput-object p1, v0, LN00;->m:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    return-void
.end method
