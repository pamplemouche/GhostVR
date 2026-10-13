.class public Li01;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LU01;


# instance fields
.field public final synthetic a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;Le01;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li01;->a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LT01;)V
    .locals 7

    .line 1
    iget-object v0, p0, Li01;->a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    .line 2
    iget-boolean v1, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->R:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    iput-object v2, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->X:LT01;

    return-void

    .line 4
    :cond_0
    iget v1, p1, LT01;->a:I

    if-gtz v1, :cond_5

    iget v3, p1, LT01;->b:I

    if-gez v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iput-object p1, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->X:LT01;

    if-nez v1, :cond_4

    if-eqz v3, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v1, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->V:Lm01;

    if-eqz v1, :cond_3

    .line 7
    iget-object v2, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->O:Ljava/lang/String;

    .line 8
    iget v0, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->P:I

    .line 9
    invoke-virtual {v1, v2, v0, p1}, Lm01;->a(Ljava/lang/String;ILT01;)V

    .line 10
    :cond_3
    iget-object p1, p0, Li01;->a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->y()V

    return-void

    .line 11
    :cond_4
    :goto_0
    iget-object v0, p0, Li01;->a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    .line 12
    iget-object v3, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 13
    iget v4, p1, LT01;->a:I

    iget v5, p1, LT01;->b:I

    const/4 v6, 0x1

    .line 14
    iget-wide v1, v3, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 15
    invoke-static/range {v1 .. v6}, LJ/N;->MjgOFo_o(JLjava/lang/Object;IIZ)V

    return-void

    .line 16
    :cond_5
    :goto_1
    iget-object p1, p0, Li01;->a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    .line 17
    iput-object v2, p1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->X:LT01;

    .line 18
    invoke-virtual {p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->y()V

    return-void
.end method
