.class public Lcom/oplus/wrapper/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"


# instance fields
.field private final blacklist mPreference:Landroid/preference/Preference;


# direct methods
.method public constructor whitelist <init>(Landroid/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/oplus/wrapper/preference/Preference;->mPreference:Landroid/preference/Preference;

    .line 39
    return-void
.end method


# virtual methods
.method public whitelist performClick(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .line 51
    iget-object v0, p0, Lcom/oplus/wrapper/preference/Preference;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 52
    return-void
.end method
