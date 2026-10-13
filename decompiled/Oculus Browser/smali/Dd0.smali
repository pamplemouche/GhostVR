.class public final synthetic LDd0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LrU;


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDd0;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, LDd0;->b:Lorg/chromium/content_public/browser/WebContents;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LDd0;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, LDd0;->b:Lorg/chromium/content_public/browser/WebContents;

    .line 1
    new-instance v2, Lrd0;

    invoke-direct {v2, v0, v1}, Lrd0;-><init>(Landroid/view/ViewGroup;Lorg/chromium/content_public/browser/WebContents;)V

    return-object v2
.end method
