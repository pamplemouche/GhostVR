.class public final synthetic LHt0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHt0;->w:Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LHt0;->w:Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;

    .line 1
    iget-wide v1, v0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;->w:J

    .line 2
    invoke-static {v1, v2, v0}, LJ/N;->M6qXk$DQ(JLjava/lang/Object;)V

    return-void
.end method
