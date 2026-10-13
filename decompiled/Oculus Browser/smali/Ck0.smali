.class public LCk0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;


# instance fields
.field public final synthetic w:LDk0;


# direct methods
.method public constructor <init>(LDk0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LCk0;->w:LDk0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLargeIconAvailable(Landroid/graphics/Bitmap;IZI)V
    .locals 0

    .line 1
    iget-object p2, p0, LCk0;->w:LDk0;

    .line 2
    invoke-virtual {p2}, LDk0;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, LCk0;->w:LDk0;

    .line 4
    iget-object p2, p1, LDk0;->j:Lnk0;

    const p3, 0x7f080087

    .line 5
    iput p3, p2, Lnk0;->h:I

    .line 6
    invoke-virtual {p1}, LDk0;->d()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, LCk0;->w:LDk0;

    invoke-static {p2, p1}, LDk0;->a(LDk0;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
