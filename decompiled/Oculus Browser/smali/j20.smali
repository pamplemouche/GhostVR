.class public Lj20;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Z

.field public final x:Ljava/lang/Boolean;

.field public final synthetic y:Lorg/chromium/chrome/browser/browserservices/OriginVerifier;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/browserservices/OriginVerifier;ZLjava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj20;->y:Lorg/chromium/chrome/browser/browserservices/OriginVerifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Lj20;->w:Z

    .line 3
    iput-object p3, p0, Lj20;->x:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lj20;->y:Lorg/chromium/chrome/browser/browserservices/OriginVerifier;

    iget-boolean v1, p0, Lj20;->w:Z

    iget-object v2, p0, Lj20;->x:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->a(Lorg/chromium/chrome/browser/browserservices/OriginVerifier;ZLjava/lang/Boolean;)V

    return-void
.end method
