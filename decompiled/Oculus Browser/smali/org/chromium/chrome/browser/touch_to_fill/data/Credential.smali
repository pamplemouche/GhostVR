.class public Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;->d:Ljava/lang/String;

    .line 6
    iput-boolean p5, p0, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;->e:Z

    return-void
.end method


# virtual methods
.method public getOriginUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isPublicSuffixMatch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;->e:Z

    return v0
.end method
