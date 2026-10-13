.class public final synthetic LTe0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LTe0;->w:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, LTe0;->w:Z

    .line 1
    invoke-static {v0}, Lorg/chromium/chrome/browser/incognito/IncognitoTabLauncher;->a(Z)V

    return-void
.end method
