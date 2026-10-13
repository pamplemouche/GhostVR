.class public final synthetic LNF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/signin/SyncPromoView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/signin/SyncPromoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LNF0;->w:Lorg/chromium/chrome/browser/signin/SyncPromoView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LNF0;->w:Lorg/chromium/chrome/browser/signin/SyncPromoView;

    .line 1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SyncPromoView;->b()V

    return-void
.end method
