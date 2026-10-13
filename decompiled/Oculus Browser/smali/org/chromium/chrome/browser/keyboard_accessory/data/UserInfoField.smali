.class public final Lorg/chromium/chrome/browser/keyboard_accessory/data/UserInfoField;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/base/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/keyboard_accessory/data/UserInfoField;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/chromium/chrome/browser/keyboard_accessory/data/UserInfoField;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/chromium/chrome/browser/keyboard_accessory/data/UserInfoField;->c:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lorg/chromium/chrome/browser/keyboard_accessory/data/UserInfoField;->d:Z

    .line 6
    iput-object p5, p0, Lorg/chromium/chrome/browser/keyboard_accessory/data/UserInfoField;->e:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public getA11yDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/keyboard_accessory/data/UserInfoField;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/keyboard_accessory/data/UserInfoField;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/keyboard_accessory/data/UserInfoField;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isObfuscated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/keyboard_accessory/data/UserInfoField;->d:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/keyboard_accessory/data/UserInfoField;->e:Lorg/chromium/base/Callback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
