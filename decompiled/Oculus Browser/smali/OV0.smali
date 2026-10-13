.class public LOV0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:I

.field public final synthetic x:Lorg/chromium/content/browser/BrowserStartupControllerImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/BrowserStartupControllerImpl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LOV0;->x:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    iput p2, p0, LOV0;->w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LOV0;->x:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    iget v1, p0, LOV0;->w:I

    .line 2
    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->b(I)V

    return-void
.end method
